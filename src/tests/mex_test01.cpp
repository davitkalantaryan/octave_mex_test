//
// file:		mex_test01.cpp  
// created on:	2020 Jul 29
// created by:	D. Kalantaryan (davit.kalantaryan@gmail.com)   
//  

#include <mex.h>
#include <string>

void mexFunction (int a_nlhs, mxArray *a_plhs[],int a_nrhs, const mxArray *a_prhs[])
{
	mxClassID inpClsId;
	int i;
	
	mexPrintf ("Octave mex file first test. inputsNr:%d, outputsNr:%d\n",a_nrhs,a_nlhs);
	
	for(i=0;i<a_nrhs;++i){
		inpClsId=mxGetClassID(a_prhs[i]);
		mexPrintf("in%d type:%s(typeNumber:%d)\n",i,mxGetClassName(a_prhs[i]),static_cast<int>(inpClsId));
	}
	
	for(i=0;i<a_nlhs;++i){
		a_plhs[i]=mxCreateString( ::std::to_string(i).c_str() );
	}
}
