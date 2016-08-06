#include <iostream>
#include <time.h>
#include <stdlib.h>
#include <assert.h>
#include <string>
#include <fstream>
#include <string.h>
#include <chrono>

using namespace std;

int detectorML=0;
int detectorDMR=0;

bool fileExists(const std::string fileName){
	std::ifstream fl(fileName.c_str());
	if(!fl.good()){
		fl.close();
		return false;
	}
	return true;
}

int testSingleBitFlip(void* dest, void* src, unsigned sz){
	long long d=0,s=0;
	memcpy((void*)&d,dest,sz);
	memcpy((void*)&s,src,sz);
	int flippedPos=-1;

	long long result = (d^s);
	unsigned count =0;
	for(unsigned i=0;i<(8*sz);i++){
		if((result>>i)&0x1){
			count++;
			flippedPos=i+1;
		}
	}
	if(count == 1){ // single bit flip detected, return the position
		return  flippedPos;
	}
	return 0; //no or more than one bit flips detected
}

void flipBit(void* data,
		    unsigned bytesz, 
		    long long bitPos){
	long long dest = 0;

	// Copy source data to a 64-bit integer
	memcpy((void*)&dest,data,bytesz);

   if ((dest>>bitPos)&0x1){
	   dest = dest & (~((long long)0x1 << (bitPos)));
   } else{
	   dest = dest |  ((long long) 0x1 << (bitPos));
   }
   // Copy back the data with a random bit flipped into the source
   memcpy(data,(void*)&dest,bytesz);

   return ; 
}

void writeDetectionData(){
	ofstream myfile;
	if(fileExists("detection.csv")){
		myfile.open("detection.csv",ios::app);
	} else {
		myfile.open("detection.csv",ios::out);
		myfile << "IsDetected_DMR,IsDetected_ML";
		myfile << endl;
	}
	if(detectorDMR>0) myfile << "1,";
	else  myfile << "0,";
	if(detectorML>0) myfile << "1" << endl;
	else  myfile << "0" << endl;
	myfile.close();
	return;
}

void writeOverheadData(long long native, long long mt1, long long mt2){

	ofstream myfile;
	if(fileExists("overhead.csv")){
		myfile.open("overhead.csv",ios::app);
	} else {
		myfile.open("overhead.csv",ios::out);
		myfile << "native_exec_time,mt1_exec_time,mt2_exec_time,mt1_overhead,mt2_overhead";
		myfile << endl;
	}
	
	myfile << native << ",";
	myfile << mt1 << "," << mt2 << ",";
	myfile << (((double)mt1-(double)native)/(double)native)*100.00 << "," ;
	myfile << (((double)mt2-(double)native)/(double)native)*100.00 << endl ;
	myfile.close();
	return;
}

void writetoFile(const char* filename, string msg, ios_base::openmode md){
	time_t rawtime;
	time (&rawtime);
	
	ofstream myfile;
	myfile.open(filename,md);
	myfile << rawtime << ": ";
	myfile << msg << endl;
	myfile.close();
	return;
}

void writetoFile(const char* filename, long long addrdist, int i, ios_base::openmode md){
	ofstream myfile;
	myfile.open(filename,md);
	myfile << addrdist << " " << i << endl;
	myfile.close();
	return;
}

void printArray(int* a, int n){
	cout << endl << endl << "[ ";
	for(int i=0;i<n-1;i++)
		cout << a[i] << " ";
	cout << a[n-1] << " ]" << endl << endl;
	return;
}

void add(int *a, int* b, int n){
	for(int i=0;i<n;i++){
		a[i] *= b[i];
		
		// profile
		#if !defined(OVERHEAD)
		if(i==0) writetoFile("add.txt", ((long long)&a[i]-(long long)a),i,ios::out);
		else writetoFile("add.txt", ((long long)&a[i]-(long long)a),i,ios::app);
		#endif
	}
	return;
}

void addFT1(int *a, int* b, int n, int cidx, int bitpos){
	long long base_addr_a=(long long)a;
	long long base_addr_a_1=(long long)a;
	long long curr_addr_a,curr_addr_a_1;
	for(int i=0;i<n;i++){
		curr_addr_a=base_addr_a+(i*sizeof(int));
		curr_addr_a_1=base_addr_a_1+(i*sizeof(int));
		
		// inject fault
		#if !defined(OVERHEAD) && defined(FI)
		if(i==cidx){
			long long temp=curr_addr_a;
			flipBit((void*)&curr_addr_a,8,bitpos);
			int pos=testSingleBitFlip((void*)&curr_addr_a,(void*)&temp,8);
			assert(pos >= 1 && pos <=64);
		}
		#endif
		
		// actual logic
		*((int*)curr_addr_a) *= b[i];
		
		// detector
		if(curr_addr_a!=curr_addr_a_1) {
			detectorDMR++;
		}
		
		// profile
		#if !defined(OVERHEAD)
		if(i==0) writetoFile("add_FT1.txt", (curr_addr_a-base_addr_a),i,ios::out);
		else writetoFile("add_FT1.txt", (curr_addr_a-base_addr_a),i,ios::app);
		#endif
	}
	return;
}

void addFT2(int *a, int* b, int n, int cidx, int bitpos){
	long long base_addr_a=(long long)a;
	long long curr_addr_a=base_addr_a;
	long long offset_a=0;
	
	*((int*)base_addr_a) *= b[0];
	
	int i;
	for(i=1;i<n;i++){
		curr_addr_a=curr_addr_a+((i-offset_a)*(sizeof(int)));
		// inject fault
		#if !defined(OVERHEAD) && defined(FI)
		if(i==cidx){
			long long temp=curr_addr_a;
			flipBit((void*)&curr_addr_a,8,bitpos);
			int pos=testSingleBitFlip((void*)&curr_addr_a,(void*)&temp,8);
			assert(pos >= 1 && pos <=64);
		}
		#endif
		
		// actual logic
		*((int*)curr_addr_a) *= b[i];
		
		// profile
		#if !defined(OVERHEAD)
		if(i==0) writetoFile("add_FT2.txt", (curr_addr_a-(long long)a),i,ios::out);
		else  writetoFile("add_FT2.txt", (curr_addr_a-(long long)a),i,ios::app);
		#endif
		
		offset_a=i;
	}
	// detector
	if((curr_addr_a-(long long)a) != sizeof(int)*(i-1)){
		detectorML++;
	}
		
	return;
}


int main(){
	srand(time(NULL));
	int n=10000 + rand()%100000;
	int bitpos=abs(rand()%64);
	int cidx = abs(rand()%n);
	int *a, *b, *acopy, *acopy1;
	a = new int[n];
	acopy = new int[n];
	acopy1 = new int[n];
	b = new int[n];
	
	for(int i=0;i<n;i++){
		a[i] = rand();
		acopy[i] = a[i];
		acopy1[i] = a[i];
		b[i] = rand();
	}
	
	
	auto start1 = std::chrono::high_resolution_clock::now();
	add(a,b,n);	
	auto elapsed1 = std::chrono::high_resolution_clock::now()-start1;
	
	auto start2 = std::chrono::high_resolution_clock::now();
	addFT1(acopy,b,n,cidx,bitpos);
	auto elapsed2 = std::chrono::high_resolution_clock::now()-start2;
	
	auto start3 = std::chrono::high_resolution_clock::now();
	addFT2(acopy1,b,n,cidx,bitpos);
	auto elapsed3 = std::chrono::high_resolution_clock::now()-start3;
	
	long long native = std::chrono::duration_cast<std::chrono::microseconds>(elapsed1).count();
	long long mt1 = std::chrono::duration_cast<std::chrono::microseconds>(elapsed2).count();
	long long mt2 = std::chrono::duration_cast<std::chrono::microseconds>(elapsed3).count();
	
	cout << "\nTime take to run add(): " << native << "us" << endl;
	cout << "\nTime take to run addFT1(): " << mt1 << "us" << endl;	
	cout << "\nTime take to run addFT2(): " << mt2 << "us" << endl;	
	
	#if defined(OVERHEAD)
	writeOverheadData(native,mt1,mt2);
	#endif
	
	#ifdef DEBUG
	printArray(a,n);
	printArray(acopy,n);
	printArray(acopy1,n);
	#endif
	
	#if !defined(FI)
	for(int i=0;i<n;i++){
		assert(a[i]==acopy[i]);
		assert(a[i]==acopy1[i]);
	}
	#endif
	
	#if defined(FI)
	writeDetectionData();
	#endif
	
	delete[] a;
	delete[] acopy;
	delete[] acopy1;
	delete[] b;
	return 0;
}
