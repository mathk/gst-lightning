Eval [
	PackageLoader fileInPackage: 'Lightning'.
	jitState := Lightning.CJitState new.
	(jitState 
	    leaf: 1;
	    getargInt: Lightning.R0 from: jitState argInt;	
	    addI: Lightning.RET to: Lightning.R0 int: 1;
	    ret;
	    assemble;
	    value: 5) printNl.

	jitState := Lightning.CJitState new.
	jitState 
	    prolog: 0;
	    movI: Lightning.R0 fromP: 'Hello World!';
	    prepare: 1;
	    pushargPtr: Lightning.R0;
	    finish: jitState pruts;
	    ret;
	    assemble;
	    value
]
