Eval [
    | ref loop |

    PackageLoader fileInPackage: 'Lightning'.

    jitState := Lightning.CJitState new.
    jitState
        leaf: 1;
	getargInt: Lightning.R2 from: jitState argInt;
        movI: Lightning.R1 fromUI: 1.
    ref := jitState branch: jitState forward reg: Lightning.R2 lowerThanUI: 2.
    jitState 
	subI: Lightning.R2 to: Lightning.R2 uint: 1;
	movI: Lightning.R0 fromUI: 1.
    loop := jitState label.
    (jitState
	subI: Lightning.R2 to: Lightning.R2 uint: 1;
	addR: Lightning.V0 to: Lightning.R0 uint: Lightning.R1;
	movR: Lightning.R0 fromUI: Lightning.R1;
	addI: Lightning.R1 to: Lightning.V0 uint: 1;
	branch: loop reg: Lightning.R2 notEqualToUI: 0;
	patch: ref;
	movR: Lightning.RET fromUI: Lightning.R1;
	ret;
	assemble;
	value: 36) printNl
]
