Object subclass: IntHolder [
    | anInt |
    
    anInt: i [
	anInt := i
    ]
]


TestCase subclass: CJitStateTest [
    
    testLoadUI [
	| state arg |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUI: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	state dump: 'test'.

	arg := IntHolder new anInt: 1; yourself.
	self assert: (state valueObject: arg) = 3. "0b..0011, the way smalltalk encode int"

	arg := IntHolder new anInt: -1; yourself.
	self assert: (state valueObject: arg) = -1. "0b..1111"

	arg := IntHolder new anInt: -2; yourself.
	self assert: (state valueObject: arg) = -3. "0b..1101"

	arg := IntHolder new anInt: -3; yourself.
	self assert: (state valueObject: arg) = -5. "0b..1011"

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state valueObject: arg) = -7 "0b..1001"
    ]

]
