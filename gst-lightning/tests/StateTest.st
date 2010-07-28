Object subclass: IntHolder [
    | anInt |
    
    anInt: i [
	anInt := i
    ]
]


TestCase subclass: CJitStateTest [
    
    testLoadC [
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadC: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadCAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadC: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadCAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadC: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadCAssert: state.
    ]

    loadCAssert: state [
	| arg |
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = (Character value: 16rF9).

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = $A.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9
    ]

    testLoadUC [
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUC: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUCAssert: state.

		state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadUC: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUCAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadUC: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUCAssert: state
    ]

    loadUCAssert: state [
	| arg |
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = (Character value: 16rF9).

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #char) = $A.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rF9
    ]

    testLoadS [
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadS: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadSAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadS: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadSAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadS: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadSAssert: state.
    ]

    loadSAssert: state [
	| arg |
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #short) = -7.

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #short) = 16r41.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9
    ]

    testLoadUS [
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUS: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUSAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadUS: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUSAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadUS: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUSAssert: state
    ]

    loadUSAssert: state [
	| arg |
	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #ushort) = 16rFFF9.

	arg := IntHolder new anInt: 16r20; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #short) = 16r41.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFF9
    ]

    testLoadI [
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadI: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadI: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadI: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state
    ]

    loadIAssert: state [
	| arg |
	arg := IntHolder new anInt: 1; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #int) = 3.

	arg := IntHolder new anInt: -1; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #int) = -1.

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9
    ]

    testLoadUI [
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUI: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadUI: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadUI: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state
	
    ]
    
    loadUIAssert: state [
	| arg |
	arg := IntHolder new anInt: 1; yourself.
	self assert: (state valueObject: arg) = 3. "0b..0011, the way smalltalk encode int"

	arg := IntHolder new anInt: -1; yourself.
	self assert: (state valueObject: arg) = -1. "0b..1111"

	arg := IntHolder new anInt: -4; yourself.
	self assert: (state value: arg argType: #smalltalk returningType: #uint) = 16rFFFFFFF9 "0b..1001"
    ]

    testLoadL [
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadL: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadL: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadL: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state
    ]

    testLoadUL [
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUL: Lightning.R0 fromReg: Lightning.R0 im: 8;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 8;
	    loadUL: Lightning.R0 fromReg: Lightning.R0 and: Lightning.R1;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    addI: Lightning.R0 to: Lightning.R0 uint: 8;
	    loadUL: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state
    ]

    testImLoadUnsigned [
	| state |
	state := CJitState new.
	state 
	    leaf;
	    loadUL: Lightning.R0 im: state testStaticInt;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadUI: Lightning.R0 im: state testStaticInt;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #ulong) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadUS: Lightning.R0 im: state testStaticInt;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadUC: Lightning.R0 im: state testStaticInt;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFF
    ]

    testStore [
	| state |
	state := CJitState new.
	state
	    storeRegI: Lightning.R2 and: Lightning.R0 fromReg: Lightning.R1.
	    "dump: 'assemblyTest'."
	
    ]
]
