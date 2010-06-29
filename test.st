Eval [
	PackageLoader fileInPackage: 'Lightning'.
	jitState := Lightning.CJitState new.
	jitState leaf: 1.
	argNum := jitState argInt.
	jitState getargInt: Lightning.R0 from: argNum.
	jitState addInt: Lightning.RET to: Lightning.R0 int: 1.
	jitState ret.
	jitState assemble.
	(jitState intValue: 6) printNl.
]
