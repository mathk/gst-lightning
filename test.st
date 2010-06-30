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
	    prolog: 1;
		getargInt: Lightning.R1 from: jitState argInt;
		movI: Lightning.R0 fromP: 'Waht ? %d \n';
		prepare: 2;
		pushargInt: Lightning.R1;
		pushargPtr: Lightning.R0;
		finish: jitState printf;
		ret;
	    assemble;
	    value
]
