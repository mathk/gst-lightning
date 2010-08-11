Object subclass: IntHolder [
    | anInt |

    anInt [
	^anInt
    ]
    
    anInt: i [
	anInt := i
    ]
]

TestCase subclass: CJitStateTest [
    
    testLoadC [
	<category: 'test'>
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadC: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadCAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
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
	<category: 'test'>
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUC: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUCAssert: state.

		state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
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
	<category: 'test'>
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadS: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadSAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
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
	<category: 'test'>
	| state |
	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUS: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUSAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
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
	<category: 'test'>
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadI: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
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
	<category: 'test'>
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUI: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
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
	<category: 'test'>
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadL: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
	    loadL: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadIAssert: state
    ]

    testLoadUL [
	<category: 'test'>
	| state |

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    loadUL: Lightning.R0 fromReg: Lightning.R0 im: 2 * state sizeOfOop;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state.

	state := CJitState new.
	state 
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R0 fromReg: Lightning.R1;
	    movI: Lightning.R1 fromUI: 2 * state sizeOfOop;
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
	    addI: Lightning.R0 to: Lightning.R0 ulong: 2 * state sizeOfOop;
	    loadUL: Lightning.R0 fromReg: Lightning.R0;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self loadUIAssert: state
    ]

    testImLoadUnsigned [
	<category: 'test'>
	| state |
	state := CJitState new.
	state 
	    leaf;
	    loadUL: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadUI: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #ulong) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadUS: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadUC: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFF
    ]

    testImLoad [
	<category: 'test'>
	| state |
	state := CJitState new.
	state 
	    leaf;
	    loadL: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadI: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadS: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFFFFFF.

	state := CJitState new.
	state 
	    leaf;
	    loadC: Lightning.R0 im: state testStaticIntAddress;
	    movR: Lightning.RET fromUI: Lightning.R0;
	    ret;
	    assemble.
	self assert: (state valueReturningType: #uint) = 16rFFFFFFFF
    ]

    testStI [
	<category: 'test'>
	| state arg |
	state := CJitState new.
	state
	    leaf;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeImI: state testStaticIntAddress fromReg: Lightning.R0;
	    ret;
	    assemble.
	
	state  valueReturningType: #void.
	self assert: (state testStaticInt = (16rFFFFFFFF01010101 
	                bitAnd: (2 raisedTo: 8 * state sizeOfOop) - 1)).

"	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 uint: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeL: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 uint: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeS: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r0101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 uint: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010111;
	    storeC: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r11 bitShift: -1)"
    ]


    testStR [
	<category: 'test'>
	| state arg |
	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 ulong: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeI: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 ulong: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeL: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 ulong: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeS: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r0101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    addI: Lightning.R1 to: Lightning.R1 ulong: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010111;
	    storeC: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r11 bitShift: -1)
    ]

    testStxR [
	<category: 'test'>
	| state arg |
	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R2 fromUI: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeRegI: Lightning.R1 and: Lightning.R2 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R2 fromUI: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeRegL: Lightning.R1 and: Lightning.R2 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R2 fromUI: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeRegS: Lightning.R1 and: Lightning.R2 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r0101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R2 fromUI: state sizeOfHeader;
	    movI: Lightning.R0 fromUI: 16r01010111;
	    storeRegC: Lightning.R1 and: Lightning.R2 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r11 bitShift: -1)
    ]

    testStxI [
	<category: 'test'>
	| state arg |
	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeImI: state sizeOfHeader and: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeImL: state sizeOfHeader and: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r01010101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R0 fromUI: 16r01010101;
	    storeImS: state sizeOfHeader and: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r0101 bitShift: -1).

	state := CJitState new.
	state
	    leaf: 1;
	    getargPtr: Lightning.R1 from: state argPtr;
	    loadP: Lightning.R1 fromReg: Lightning.R1;
	    movI: Lightning.R0 fromUI: 16r01010111;
	    storeImC: state sizeOfHeader and: Lightning.R1 fromReg: Lightning.R0;
	    ret;
	    assemble.
	arg := IntHolder new anInt: 0; yourself.
	state value: arg argType: #smalltalk returningType: #void.
	self assert: arg anInt = (16r11 bitShift: -1)
    ]
]
