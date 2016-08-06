
#include "AddrSitesRange.h"

using namespace llvm;
using namespace std;

set<Instruction*> AddrSitesRange::getfaultSites(Module *M, CLData *Cl, FunctionList *Fl){
  // get the initial list using base class getfaultSites() method
  // need to call updateFnList first as Cl has been updated based on
  // the list provided in the csv file
  this->populateRangeDS(M,Cl);
  set<Instruction*> instrList = AddrSites::getfaultSites(M,Cl,Fl);

  if(this->rangeDS.empty()){
    errs() << "\nWarning: Range list empty, skipping further processing..\n";
    return instrList;
  }

  // prune the list based on rangeDS
  vector<Instruction*> deleteInstrList;
  for(set<Instruction*>::iterator si = instrList.begin();si!=instrList.end();++si){
    Instruction* currentInstr = *si;
    // print debug info for each instruction
    if (DILocation *loc = currentInstr->getDebugLoc()){
      StringRef file = loc->getFilename();
      unsigned line = loc->getLine();
      this->writeDbgData(currentInstr,Cl,"addr");

      // absolute file path used as key in rangeDS
      string absPath = file.str();

      // deleteflag used to decided whether the current instruction
      // should be pruned out of the fault injection list
      bool deleteflag = true;

      // if file not found prune out the instruction
      if(this->rangeDS.find(absPath) != this->rangeDS.end()){
	vector<vector<unsigned> > value = this->rangeDS[absPath];
	for(unsigned i=0; i< value.size();i++){
	  // fields[] size should always be 2
	  // fields[0]: start line no. to be considered for fault injection
	  // in the source code
	  // fields[1]: end line no. to be considered for fault injection in
	  // the source code
	  vector<unsigned> fields = value[i];
	  unsigned startPos = fields[0];
	  unsigned endPos = fields[1];
	  if(line >= startPos && line <= endPos){
		#ifdef DEBUG
	    errs() << "\nBelow instruction will be considered for fault injection..";
	    errs() << "\n" << *currentInstr;
	    errs() << "\nLine number: " << line;
	    errs() << "\nFile name: " << file;
	    #endif
	    deleteflag = false;
	    break;
	  }
	}
      }

      if(deleteflag){
	deleteInstrList.push_back(currentInstr);
      }
    } else {
	  #ifdef DEBUG
      errs() << "\nCurrent Instruction: " << *currentInstr;
      errs() << "\nWarning:debug information not available for the current instruction";
      errs() << "\nWarning:please ensure that you compiled your bitcode in debug (-g) mode\n";
      #endif
    }
  }

  // delete instructions identified not to be targeted for fault injection
  // based on user's choice
  for(unsigned i=0; i<deleteInstrList.size();i++){
    if(instrList.find(deleteInstrList[i]) != instrList.end()){
	  #ifdef DEBUG
      errs() << "\nBelow instruction will not be considered for fault injection..";
      errs() << "\n" << *deleteInstrList[i] << "\n";
      instrList.erase(deleteInstrList[i]);
      #endif
    }
  }

  return instrList;
}


void AddrSitesRange::populateRangeDS(Module *M, CLData *Cl){

  string fileName = Cl->getRangeFileName();
  ProcessCSV csv(fileName);

  for(unsigned i=0;i<csv.getRowCount();i++){
    string codeflName = csv.getRowElement(i,0);
    string startPosStr = csv.getRowElement(i,1);
    string endPosStr = csv.getRowElement(i,2);

    unsigned startPos = (unsigned) atoi(startPosStr.c_str());
    unsigned endPos = (unsigned) atoi(endPosStr.c_str());

    errs() << "\nSource code file name: " << codeflName;
    errs() << "\nStart position: " << startPos;
    errs() << "\nEnd Position: " << endPos << "\n";

    if(startPos>endPos){
      errs() << "\nWarning:Ignoring current line as StartPos > EndPos\n";
    } else {
      vector<unsigned> pos;
      vector<vector<unsigned> > poslist;
      pos.push_back(startPos);
      pos.push_back(endPos);
      poslist.push_back(pos);
      if(this->rangeDS.find(codeflName) == this->rangeDS.end()){
	this->rangeDS.insert(pair<string,
			     vector<vector<unsigned> > > (codeflName,poslist));
      } else {
	this->rangeDS[codeflName].push_back(pos);
      }
    }
  }
  return;
}
