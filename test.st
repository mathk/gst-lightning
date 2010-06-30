Eval [
	PackageLoader fileInPackage: 'Lightning'.
	jitState := Lightning.CJitState new.
	(jitState 
	    leaf: 1;
	    getargInt: Lightning.R0 from: jitState argInt;	
	    addInt: Lightning.RET to: Lightning.R0 int: 1;
	    ret;
	    assemble;
	    value: 5) printNl.

	jitState := Lightning.CJitState new.
	(jitState 
	    prolog;
	    assemble;
	    value) printNl
]
