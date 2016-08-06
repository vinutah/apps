#include <stdio.h>
#include <stdlib.h>
#include "../../runtime/Corrupt.h"

// Test Pass counters
unsigned testPassCount = 0;
unsigned testPassIntTy1 = 0;
unsigned testPassIntTy8 = 0;
unsigned testPassIntTy16 = 0;
unsigned testPassIntTy32 = 0;
unsigned testPassIntTy64 = 0;
unsigned testPassFloatTy = 0;
unsigned testPassDoubleTy = 0;

// Test fail counters
unsigned testFailCount = 0;
unsigned testFailIntTy1 = 0;
unsigned testFailIntTy8 = 0;
unsigned testFailIntTy16 = 0;
unsigned testFailIntTy32 = 0;
unsigned testFailIntTy64 = 0;
unsigned testFailFloatTy = 0;
unsigned testFailDoubleTy = 0;

void testCheckMask(){
	void* a;
	int numbytes;
	float fldata;
	double dbdata;
	int intdata;
	short shdata;
	long long lldata;

	// test scenarios
	// 1. all on
	// 2. some on
	// 3. all off

	// test float
	fldata = 0xffffffff;
	assert(checkMask((void*) &fldata,4)==1 && "float all masks on test failed");
	fldata = 0x0f5ff09f;
	assert(checkMask((void*) &fldata,4)==1 && "float some masks on test failed");
	fldata = 0x00000000;
	assert(checkMask((void*) &fldata,4)==0 && "float all masks off test failed");

	// test double
	dbdata = 0xffffffffffffffff;
	assert(checkMask((void*) &dbdata,8)==1 && "double all masks on test failed");
	dbdata = 0x0f5ff09f0f5ff09f;
	assert(checkMask((void*) &dbdata,8)==1 && "double some masks on test failed");
	dbdata = 0x0000000000000000;
	assert(checkMask((void*) &dbdata,8)==0 && "double all masks off test failed");

	// test short
	shdata = 0xffff;
	assert(checkMask((void*) &shdata,2)==1 && "short all masks on test failed");
	shdata = 0x0f5f;
	assert(checkMask((void*) &shdata,2)==1 && "short some masks on test failed");
	shdata = 0x0000;
	assert(checkMask((void*) &shdata,2)==0 && "short all masks off test failed");

	// test int
	intdata = 0xffffffff;
	assert(checkMask((void*) &intdata,4)==1 && "int all masks on test failed");
	intdata = 0x0f5ff09f;
	assert(checkMask((void*) &intdata,4)==1 && "int some masks on test failed");
	intdata = 0x00000000;
	assert(checkMask((void*) &intdata,4)==0 && "int all masks off test failed");

	// test long long
	lldata = 0xffffffffffffffff;
	assert(checkMask((void*) &lldata,8)==1 && "long long all masks on test failed");
	lldata = 0x0f5ff09f0f5ff09f;
	assert(checkMask((void*) &lldata,8)==1 && "long long some masks on test failed");
	lldata = 0x0000000000000000;
	assert(checkMask((void*) &lldata,8)==0 && "long long all masks off test failed");
}

int testFIIntTy1(void){
	int b=0,tb=0;
	int bytesz=0;
	int flippedPos=-1;
	bytesz=4;
	b = rand()%2;
	tb = b;
	tb = injectSoftErrorIntTy1(tb,"called_from_test()",0xffffffff);
	flippedPos =testSingleBitFlip(&tb,&b,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassIntTy1++;
	} else{
		testFailCount++;
		testFailIntTy1++;
	}
	printf("\nIntegerTy1 number before fault injection is: %d" , b);
	printf("\nIntegerTy1 number before fault injection is: %d" , tb);
	printBitPattern(&b,bytesz);
	printBitPattern(&tb,bytesz);
	return flippedPos;
}

int testFIIntTy8(void){
	char c=0,tc=0;
	int bytesz=0;
	int flippedPos=-1;
	bytesz=1;
	c = rand();
	tc = c;
	tc = injectSoftErrorIntTy8(tc,"called_from_test()",0xff);
	flippedPos =testSingleBitFlip(&tc,&c,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassIntTy8++;
	} else{
		testFailCount++;
		testFailIntTy8++;
	}
	printf("\nIntegerTy8 number before fault injection is: %c" , c);
	printf("\nIntegerTy8 number before fault injection is: %c" , tc);
	printBitPattern(&c,bytesz);
	printBitPattern(&tc,bytesz);
	return flippedPos;
}

int testFIIntTy16(void){
	int bytesz=0;
	int flippedPos=-1;
	short s=0,ts=0;
	bytesz=2;
	s = rand();
	ts = s;
	ts = injectSoftErrorIntTy16(ts,"called_from_test()",0xffff);
	flippedPos =testSingleBitFlip(&ts,&s,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassIntTy16++;
	} else{
		testFailCount++;
		testFailIntTy16++;
	}
	printf("\nIntegerTy16 number before fault injection is: %d" , s);
	printf("\nIntegerTy16 number before fault injection is: %d" , ts);
	printBitPattern(&s,bytesz);
	printBitPattern(&ts,bytesz);
	return flippedPos;
}

int testFIIntTy32(void){
	int i=0,ti=0;
	int bytesz=0;
	int flippedPos=-1;
	bytesz=4;
	i = rand();
	ti = i;
	ti = injectSoftErrorIntTy32(ti,"called_from_test()",0xffffffff);
	flippedPos =testSingleBitFlip(&ti,&i,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassIntTy32++;
	} else{
		testFailCount++;
		testFailIntTy32++;
	}
	printf("\nIntegerTy32 number before fault injection is: %d" , i);
	printf("\nIntegerTy32 number before fault injection is: %d" , ti);
	printBitPattern(&i,bytesz);
	printBitPattern(&ti,bytesz);
	return flippedPos;
}

int testFIIntTy64(void){
	long long l,tl=0;
	int bytesz=0;
	int flippedPos=-1;
	bytesz=8;
	l = rand();
	tl = l;
	tl = injectSoftErrorIntTy64(tl,"called_from_test()",0xffffffffffffffff);
	flippedPos =testSingleBitFlip(&tl,&l,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassIntTy64++;
	} else{
		testFailCount++;
		testFailIntTy64++;
	}
	printf("\nIntegerTy64 number before fault injection is: %llu" , l);
	printf("\nIntegerTy64 number before fault injection is: %llu" , tl);
	printBitPattern(&l,bytesz);
	printBitPattern(&tl,bytesz);
	return flippedPos;
}

int testFIFloatTy(void){
	float f=0.0,tf=0.0;
	int bytesz=0;
	int flippedPos=-1;
	bytesz=4;
	f = ((float)rand());
	if(f != f ) {return flippedPos;} // NaN
	tf = f;
	// injected a bit flip
	tf = injectSoftErrorFloatTy(tf,"called_from_test()",0xffffffff);
	flippedPos =testSingleBitFlip(&tf,&f,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassFloatTy++;
	} else{
		testFailCount++;
		testFailFloatTy++;
	}
	printf("\nFloat (single precsion) number before fault injection is: %f" , f);
	printf("\nFloat (single precsion) number before fault injection is: %f" , tf);
	printBitPattern(&f,bytesz);
	printBitPattern(&tf,bytesz);
	return flippedPos;
}

int testFIDoubleTy(void){
	double d=0.0,td=0.0;
	int bytesz=0;
	int flippedPos=-1;
	bytesz=8;
	d = ((double)rand());
	if(d != d ) {return flippedPos;} // NaN
	td = d;
	td = injectSoftErrorDoubleTy(td,"called_from_test()",0xffffffffffffffff);
	flippedPos =testSingleBitFlip(&td,&d,bytesz);
	if(flippedPos){
		testPassCount++;
		testPassDoubleTy++;
	} else{
		testFailCount++;
		testFailDoubleTy++;
	}
	printf("\nFloat (double precsion) number before fault injection is: %lf" , d);
	printf("\nFloat (double precsion) number before fault injection is: %lf" , td);
	printBitPattern(&d,bytesz);
	printBitPattern(&td,bytesz);
	return flippedPos;
}

void test(enum DataType dt){
	int flippedPos=-1;
    printf("\n\n//------------------------START--------------------------//");
    if(dt == IntTy1){
    	flippedPos = testFIIntTy1();
    } else if(dt == IntTy8){
    	flippedPos = testFIIntTy8();
    } else if(dt == IntTy16){
    	flippedPos = testFIIntTy16();
    } else if(dt == IntTy32){
    	flippedPos = testFIIntTy32();
    } else if(dt == IntTy64){
    	flippedPos = testFIIntTy64();
    } else if(dt == FloatTy){
    	flippedPos = testFIFloatTy();
    } else if(dt == DoubleTy){
    	flippedPos = testFIDoubleTy();
    }

	if (flippedPos){
		printf("\nA single-bit flip is successfully detected!");
		printf("\nFlipped bit position is: %d",flippedPos);
		printf("\nTEST PASS");
	} else{
		printf("\nError:No bit flip detected!");
		printf("\nTEST FAIL");
	}
	printf("\n//------------------------END----------------------------//\n\n");
	return;
}

int main(int argc, char* argv[]){
//	srand(time(NULL));
//	updateFIParams();
//	unsigned testCount = 10 + rand()%91; // // number of tests between 10 and 1000
//    printf("\nStarting testing of functions implemented in Corrupt.cpp...\n");
//
//    for(unsigned i=0;i<testCount;i++){
//    	test(IntTy1);
//    	test(IntTy8);
//    	test(IntTy16);
//    	test(IntTy32);
//    	test(IntTy64);
//    	test(FloatTy);
//    	test(DoubleTy);
//    }
//    printFaultSitesData();
//    printFaultInjectionData();

    testCheckMask();

//    printf("\n\n\n------------------------TEST RESULT-------------------------");
//	//~ printf("\nTotal number of tests executed: " << testPassCount+testFailCount;
//	printf("\nPercent total tests PASSED: %f" , ((float)testPassCount*100.0)/
//			((float)testPassCount+(float)testFailCount));
//	printf("\nPercent IntTy1 tests PASSED: %f",((float)testPassIntTy1*100.0)/
//			((float)testPassIntTy1+(float)testFailIntTy1));
//	printf("\nPercent IntTy16 tests PASSED: %f" , ((float)testPassIntTy16*100.0)/
//			((float)testPassIntTy16+(float)testFailIntTy16));
//	printf("\nPercent IntTy32 tests PASSED: %f" , ((float)testPassIntTy32*100.0)/
//			((float)testPassIntTy32+(float)testFailIntTy32));
//	printf("\nPercent IntTy64 tests PASSED: %f" , ((float)testPassIntTy64*100.0)/
//			((float)testPassIntTy64+(float)testFailIntTy64));
//	printf("\nPercent FloatTy tests PASSED: %f" , ((float)testPassFloatTy*100.0)/
//			((float)testPassFloatTy+(float)testFailFloatTy));
//	printf("\nPercent DoubleTy tests PASSED: %f" , ((float)testPassDoubleTy*100.0)/
//			((float)testPassDoubleTy+(float)testFailDoubleTy));
//	printf("\n------------------------------------------------------------\n\n\n");

	return 0;
}
