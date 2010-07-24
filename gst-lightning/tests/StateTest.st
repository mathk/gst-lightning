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

	arg := IntHolder new anInt: 1; yourself.
	self assert: (state valueObject: arg) = 3. "0b..0011, the way smalltalk encode int"

	arg := IntHolder new anInt: -1; yourself.
	self assert: (state valueObject: arg) = -1. "0b..1111"

	arg := IntHolder new anInt: -2; yourself.
	self assert: (state valueObject: arg) = -3. "0b..1101"

	arg := IntHolder new anInt: -3; yourself.
	self assert: (state valueObject: arg) = -5. "0b..1011"

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state valueObject: arg) = -7. "0b..1001"

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9 "0b..1001"
    ]

    testLoadC [
	| arg state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadC: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = (Character value: 16rF9).

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = $A.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9
    ]

    testLoadUC [
	| arg state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUC: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = (Character value: 16rF9).

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = $A.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rF9
    ]

    testLoadS [
	| arg state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadS: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #short) = -7.

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #short) = 16r41.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9
    ]

    testLoadUS [
	| arg state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUS: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #ushort) = 16rFFF9.

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #short) = 16r41.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFF9
    ]
]