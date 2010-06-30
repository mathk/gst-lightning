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
	
    argChar [
	"Return the value used by #getArgChar: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgC' returning: #int args: #(#self)>
    ]

    argUChar [
	"Return the value used by #getArgUChar: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgUC' returning: #int args: #(#self)>
    ]

    argShort [
	"Return the value used by #getArgShort: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgS' returning: #int args: #(#self)>
    ]

    argUShort [
	"Return the value used by #getArgUShort: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgUS' returning: #int args: #(#self)>
    ]

    argInt [
	"Return the value used by #getArgInt: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgI' returning: #int args: #(#self)>
    ]

    argUInt [
	"Return the value used by #getArgUInt: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgUI' returning: #int args: #(#self)>
    ]

    argLong [
	"Return the value used by #getArgLong: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgUL' returning: #int args: #(#self)>
    ]

    argULong [
	"Return the value used by #getArgULong: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgUL' returning: #int args: #(#self)>
    ]

    argPtr [
	"Return the value used by #getArgPtr: 
	 Each time you call an #arg* method it popup the argument so next
	 time you call it you get the next argument"
	
	<category: 'dsl arguments'>
	<cCall: 'lightningArgP' returning: #int args: #(#self)>
    ]

    getargChar: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargChar: reg number from: offset
    ]

    primGetargChar: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargIntChar:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargC' returning: #void args: #(#self #int #int)>
    ]

    getargUChar: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargUChar: reg number from: offset
    ]

    primGetargUChar: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargUChar:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargUC' returning: #void args: #(#self #int #int)>
    ]

    getargShort: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargShort: reg number from: offset
    ]

    primGetargShort: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargIntShort:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargS' returning: #void args: #(#self #int #int)>
    ]

    getargUShort: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargUShort: reg number from: offset
    ]

    primGetargUShort: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargUShort:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargUS' returning: #void args: #(#self #int #int)>
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

    getargUInt: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargUInt: reg number from: offset
    ]

    primGetargUInt: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargUInt:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargUI' returning: #void args: #(#self #int #int)>
    ]

    getargLong: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargLong: reg number from: offset
    ]

    primGetargLong: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargLong:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargL' returning: #void args: #(#self #int #int)>
    ]

    getargULong: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargULong: reg number from: offset
    ]

    primGetargULong: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargULong:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargUL' returning: #void args: #(#self #int #int)>
    ]

    getargPtr: reg from: offset [
	"Fetch the argument and store it intop a register"
	<category: 'dsl arguments'>
	self primGetargPtr: reg number from: offset
    ]

    primGetargPtr: reg from: offset [
	"Fetch the argument and store it intop a register
	 This is a private primitive use #getargPtr:from: instead"
	<category: 'private dsl arguments'>
	<cCall: 'lightningGetargP' returning: #void args: #(#self #int #int)>
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

    assemble [
	"Flsuh the code so that it can be execute"
	<category: 'dsl process'>
	<cCall: 'lightningFlushCode' returning: #void args: #(#self)>
    ]

    intValue: arg [
	"Invoke the jit code"
	<category: 'dsl running'>
	<cCall: 'lightningIValue' returning: #int args: #(#self #int)>
    ]
]
