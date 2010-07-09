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
	<category: 'dsl prolog'>
	<cCall: 'lightningLeaf' returning: #void args: #(#self #ulong)>
    ]

    leaf [
	"Initialize the Jit and set the number of argument to 0"
	<category: 'dsl prolog'>
	self leaf: 0.
    ]

    prolog: numargs [
	"Add the function prolog with numargs arguments"
	<category: 'dsl prolog'>
	<cCall: 'lightningProlog' returning: #void args: #(#self #ulong)>
    ]

    prolog [
	"Add the function prolog with 0 argument"
	<category: 'dsl prolog'>
	self prolog: 0.
    ]

    prepare: numarg [
	"Prepare a call of n argument"
	<category: 'dsl arguments'>
	<cCall: 'lightningPrepare' returning: #void args: #(#self #int)>
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

    pushargInt: reg [
	"Push an int in the stack"
	<category: 'dsl argument'>
	self primPushargInt: reg number
    
    ]

    primPushargInt: regNumber [
	"Push an int in the stack
	 This is a private primitive use #pushargInt: instead"
	<category: 'dsl argument'>
	<cCall: 'lightningPusharg_I' returning: #void args: #(#self #int)>
    
    ]

    pushargPtr: reg [
	"Push an pointer in the stack"
	<category: 'dsl argument'>
	self primPushargInt: reg number
    
    ]

    primPushargPtr: regNumber [
	"Push an pointer in the stack
	 This is a private primitive use #pushargPtr: instead"
	<category: 'dsl argument'>
	<cCall: 'lightningPusharg_P' returning: #void args: #(#self #int)>
    
    ]

    finish: fct [
	"Call a function"
	<category: 'dsl call'>
	<cCall: 'lightningFinish' returning: #void args: #(#self #cObject) >
    ]
    
    addI: regDst to: regSrc int: val [
	"Add an integer to a register. Result is store in a register"
	<category: 'dsl binary alu'>
	self primAddI: regDst number to: regSrc number int: val
    ]

    addI: regDst to: regSrc uint: val [
        "Add an integer to a register. Result is store in a register"
        <category: 'dsl binary alu'>
        self primAddI: regDst number to: regSrc number uint: val
    ]

    addR: regDst to: regSrc uint: regVal [
        "Add an register to a register. Result is store in a register"
        <category: 'dsl binary alu'>
        self primAddR: regDst number to: regSrc number uint: regVal number
    ]
    
    primAddI: regDstNumber to: regSrcNumber int: val [
	"Add an integer to a register. Result is store in a register
	 This is a private primitive use #addI:to:ont: instead"
	<category: 'private dsl binary alu'>
	<cCall: 'lightningAddI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddI: regDstNumber to: regSrcNumber uint: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddI_UI' returning: #void args: #(#self #int #int #int)>
    ]

    primAddR: regDstNumber to: regSrcNumber int: regNumber [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addInt:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddR: regDstNumber to: regSrcNumber uint: regNumber [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addInt:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    primAddXI: regDstNumber to: regSrcNumber int: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addInt:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddXI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddXR: regDstNumber to: regSrcNumber int: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addInt:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddXR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddCI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddCI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddCR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddCR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddXI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddXI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primAddXR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddXR_I' returning: #void args: #(#self #int #int #int)>
    ]

    subI: regDst to: regSrc uint: val [
        "Add an integer to a register. Result is store in a register"
        <category: 'dsl binary alu'>
        self primSubI: regDst number to: regSrc number uint: val
    ]

    primSubI: regDstNumber to: regSrcNumber uint: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningSubI_UI' returning: #void args: #(#self #int #int #int)>
    ]

    subR: regDst to: regSrc uint: reg [
        "Add an integer to a register. Result is store in a register"
        <category: 'dsl binary alu'>
        self primSubR: regDst number to: regSrc number uint: reg number
    ]

    primSubR: regDstNumber to: regSrcNumber uint: regNum [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningSubR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    mulR: regDst to: regSrc int: regVal [
        <category: 'dsl binary alu'>

        self primMulR: regDst number to: regSrc number int: regVal number
    ]

    primMulR: regDstNumber to: regSrcNumber int: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningMulR_I' returning: #void args: #(#self #int #int #int)>
    ]

    mulR: regDst to: regSrc uint: regVal [
        <category: 'dsl binary alu'>

        self primMulR: regDst number to: regSrc number uint: regVal number
    ]

    primMulR: regDstNumber to: regSrcNumber uint: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningMulR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    divR: regDst to: regSrc uint: regVal [
        <category: 'dsl binary alu'>

        self primDivR: regDst number to: regSrc number uint: regVal number
    ]

    primDivR: regDstNumber to: regSrcNumber uint: val [
        <category: 'private dsl binary alu'>

        <cCall: 'lightningDivR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    primAndI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAndI_I' returning: #void args: #(#self #int #int #int)>
    ]   

    primAndR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAndR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primOrI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningOrI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primOrR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningOrR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primXorI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningXorI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primXorR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningXorR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primLshI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLshI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primLshR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLshR_I' returning: #void args: #(#self #int #int #int)>
    ]

    primRshISigned: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningRshI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primRshI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningRshI_UI' returning: #void args: #(#self #int #int #int)>
    ]

    primRshR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningRshR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    primNegR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningNegR_I' returning: #void args: #(#self #int #int)>
    ]

    primNegR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningNegR_I' returning: #void args: #(#self #int #int)>
    ]

    primLtR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLtR_I' returning: #void args: #(#self #int #int)>
    ]

    primLeR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLeR_I' returning: #void args: #(#self #int #int)>
    ]

    primGtR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningGtR_I' returning: #void args: #(#self #int #int)>
    ]


    primGeR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningGeR_I' returning: #void args: #(#self #int #int)>
    ]


    primNeR: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningNeR_I' returning: #void args: #(#self #int #int)>
    ]


    primLtRUI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLtR_UI' returning: #void args: #(#self #int #int)>
    ]


    primLeRUI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLeR_UI' returning: #void args: #(#self #int #int)>
    ]


    primGtRUI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningGtR_UI' returning: #void args: #(#self #int #int)>
    ]


    primGeRUI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningGeR_UI' returning: #void args: #(#self #int #int)>
    ]


    primLtI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLtI_I' returning: #void args: #(#self #int #int)>
    ]


    primLeI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLeI_I' returning: #void args: #(#self #int #int)>
    ]


    primGtI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningGtI_I' returning: #void args: #(#self #int #int)>
    ]


    primGeI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningGeI_I' returning: #void args: #(#self #int #int)>
    ]


    primEqI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningEqI_I' returning: #void args: #(#self #int #int)>
    ]


    primNeI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningNeI_I' returning: #void args: #(#self #int #int)>
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

    value [
    "call the generated method and return the result"
    <category: 'dsl stack'>
    <cCall: 'lightningValue' returning: #int args: #(#self)>
    ]

    value: anArg [
        "call the generated method and return the result"
        <category: 'dsl stack'>
        <cCall: 'lightningValueWith' returning: #int args: #(#self #int)>
    ]

    movI: reg fromP: ptr [
    "Move pointer to a register"
    <category: 'dsl transfer'>
    self primMovI: reg number fromP: ptr
    ]

    movI: reg fromUI: int [
        "Move unsigned integer to a register"
        <category: 'dsl transfer'>
        self primMovI: reg number fromUI: int
    ]

    primMovI: regNumber fromP: ptr [
	"Move pointer to a register
	 This is a private primitive use #movI:fromP: instead"
	<category: 'dsl transfer'>
	<cCall: 'lightningMovI_P' returning: #void args: #(#self #int #string)>
    ]

    primMovI: regNumber fromUI: int [
        "Move unsigned integer to a register
         This is a private primitive use #movI:fromP: instead"
        <category: 'private-primitive'>
        <cCall: 'lightningMovI_UI' returning: #void args: #(#self #int #int)>
    ]

    movR: reg fromUI: regSrc [
        "Move unsigned integer to a register"
        <category: 'dsl transfer'>
        self primMovR: reg number fromUI: regSrc number
    ]

    primMovR: regNumber fromUI: int [
        "Move pointer to a register
         This is a private primitive use #movI:fromP: instead"
        <category: 'dsl transfer'>
        <cCall: 'lightningMovR_UI' returning: #void args: #(#self #int #int)>
    ]

    branch: dir reg: regNumber lowerThanI: int [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
	^ self primBranch: dir reg: regNumber number lowerThanI: int
    ]

    primBranch: dir reg: regNumber lowerThanI: int [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
        <cCall: 'lightningBltI_I' returning: #int args: #(#self #int #int #int)>
    ]

    branch: dir reg: regNumber lowerThanUI: int [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
	^ self primBranch: dir reg: regNumber number lowerThanUI: int
    ]

    primBranch: dir reg: regNumber lowerThanUI: int [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
        <cCall: 'lightningBltI_UI' returning: #int args: #(#self #int #int #int)>
    ]

    branch: dir reg: regNumber notEqualToUI: int [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
        ^ self primBranch: dir reg: regNumber number notEqualToUI: int
    ]

    primBranch: dir reg: regNumber notEqualToUI: int [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
        <cCall: 'lightningBneI_UI' returning: #int args: #(#self #int #int #int)>
    ]

    forward [
    "Jump to direction if reg < int "
        <category: 'dsl jump'>
        <cCall: 'lightningForward' returning: #int args: #(#self)>
    ]

    label [
        "Return the label "
        <category: 'dsl jump'>
        <cCall: 'lightningGetLabel' returning: #int args: #(#self)>
    ]

    patch: int [
        "Patch the forward jump "
        <category: 'dsl jump'>
        <cCall: 'lightningPatch' returning: #void args: #(#self #int)>
    ]

    storeReg: aRegister fromI: in [
        <category: 'store'>

	^ self primtStoreReg: aRegister number fromI: in
    ]

    primtStoreReg: aRegister fromI: in [
	<category: 'primitive store'>
   
	<cCall: 'lightningStR_I' returning: #void args: #(#self #int #int)> 
    ]

    storeReg: aRegister fromUI: in [
        <category: 'store'>

	^ self primtStoreReg: aRegister number fromUI: in
    ]

    primtStoreReg: aRegister fromUI: in [
	<category: 'primitive store'>
    
	<cCall: 'lightningStR_UI' returning: #void args: #(#self #int #uInt)> 
    ]

    storeReg: aRegister fromP: in [
        <category: 'store'>

	^ self primtStoreReg: aRegister number fromP: in
    ]

    primtStoreReg: aRegister fromP: in [
	<category: 'primitive store'>
    
	<cCall: 'lightningStR_P' returning: #void args: #(#self #int #cObject)> 
    ]

    storeReg: aRegister fromF: in [
        <category: 'store'>

	^ self primtStoreReg: aRegister number fromF: in
    ]

    primtStoreReg: aRegister fromF: in [
	<category: 'primitive store'>
    
	<cCall: 'lightningStR_F' returning: #void args: #(#self #int #float)> 
    ]

    storeReg: aRegister fromD: in [
        <category: 'store'>

	^ self primtStoreReg: aRegister number fromD: in
    ]

    primtStoreReg: aRegister fromD: in [
	<category: 'primitive store'>
    
	<cCall: 'lightningStR_D' returning: #void args: #(#self #int #double)> 
    ]

    storeIm: aRegister fromI: in [
	<category: 'store'>
    
	<cCall: 'lightningStI_I' returning: #void args: #(#self #int #int)> 
    ]

    storeIm: aRegister fromUI: in [
	<category: 'store'>
    
	<cCall: 'lightningStI_UI' returning: #void args: #(#self #int #uInt)> 
    ]

    storeIm: aRegister fromP: in [
	<category: 'store'>
    
	<cCall: 'lightningStI_P' returning: #void args: #(#self #int #cObject)> 
    ]

    storeIm: aRegister fromF: in [
	<category: 'store'>
    
	<cCall: 'lightningStI_F' returning: #void args: #(#self #int #float)> 
    ]

    storeIm: aRegister fromD: in [
	<category: 'store'>
    
	<cCall: 'lightningStI_D' returning: #void args: #(#self #int #double)> 
    ]
]

