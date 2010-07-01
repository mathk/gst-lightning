" Hey Emacs, I want -*- tab-width: 8; -*- "

CObject subclass: CJitState [

    CJitState class >> primAlloc: nByte [
	"Allocate a new jit_state that hold the assembly code"
	<category: 'primitive allocation'>
	<cCall: 'lightningAllocJitState' returning: #{CJitState} args: #(#ulong)>
    ]
    
    CJitState class >> new [
	"Create a new instance that can hold 1024bytes of assembly code"
	<category: 'instance creation'>
	^self primAlloc: 1024
    ]

    leaf: numargs [
	"Initialize the Jit and set the number of argument"
	<category: 'dsl initialize'>
	<cCall: 'lightningLeaf' returning: #void args: #(#self #ulong)>
    ]

    leaf [
	"Initialize the Jit and set the number of argument to 0"
	<category: 'dsl initialize'>
	self leaf: 0.
    ]
	
    argInt [
	"Return the value used by #getArgInt: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgI' returning: #int args: #(#self)>
    ]
    
    getargInt: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargInt: reg number from: offset
    ]

    primGetargInt: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargInt:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargI' returning: #void args: #(#self #int #int)>
    ]
    
    addInt: regDst to: regSrc int: val [
	"Add an integer to a register. Result is store in a register"
	<category: 'dsl binary alu'>
	self primAddInt: regDst number to: regDst number int: val
    ]
	
    primAddInt: regDstNumber to: regSrcNumber int: val [
	"Add an integer to a register. Result is store in a register
	 This is a private primitive use #addInt:to:ont: instead"
	<category: 'private dsl binary alu'>
	<cCall: 'lightningAddI_I' returning: #void args: #(#self #int #int #int)>
    ]

    ret [
	"Return from a function instruction"
	<category: 'dsl stack'>
	<cCall: 'lightningRetFct' returning: #void args: #(#self)>
    ]

    value [
	"call the generated method and return the result"
	<category: 'dsl stack'>
	<cCall: 'lightningValue' returning: #void args: #(#self)>
    ]

    value: anArg [
        "call the generated method and return the result"
        <category: 'dsl stack'>
        <cCall: 'lightningValueWith' returning: #void args: #(#self #int)>
    ]
]
