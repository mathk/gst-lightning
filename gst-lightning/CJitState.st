" Hey Emacs, I want -*- tab-width: 8; -*- "
CStruct subclass: CStructJitState [
     <declaration: #( (#x #uLong)
		      (#fp (#ptr #char))
                      (#nextargGet #int)
                      (#nextargPut #int)
                      (#delay  #uLong) )>
]


CStruct subclass: CJitState [

    <declaration: #( (#state #{CStructJitState})
		     (#buffer #{CCodeBuffer} ) )>

    CJitState class >> primGstThisContextOOP [
	<category: 'primitive'>

	<primitive: VMpr_GstThisContextOOP_ptr>
    ]

    CJitState class >> primAlloc: nByte [
	"Allocate a new jit_state that hold the assembly code"
	<category: 'primitive allocation'>

	<cCall: 'lightningAllocJitState' returning: #{CJitState} args: #(#ulong)>
    ]
    
    CJitState class >> new [
	"Create a new instance that can hold 1024bytes of assembly code"
	<category: 'instance creation'>

	^ (self primAlloc: 1024)
	    initialize;
	    yourself
    ]

    | codeBuffer jumpMap |

    initialize [
	<category: 'initialize'>
	codeBuffer := self buffer.
	jumpMap := Dictionary new
    ]

    print [
	"Print the state opcode"
	<category: 'debugging'>
	<cCall: 'lightningPrint' returning: #void args: #(#self)>
    ]

    printAddr [
	"Print the addresse opcode"
	<category: 'debugging'>
	<cCall: 'lightningPrintAddr' returning: #void args: #(#self)>
    ]

    dump: fileName [
	"Print the state opcode"
	<category: 'debugging'>
	<cCall: 'lightningDump' returning: #void args: #(#self #string)>
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

    finishUL: fct [
	"Call a function"
	<category: 'dsl call'>
	<cCall: 'lightningFinish' returning: #void args: #(#self #ulong) >
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

    addI: regDst to: regSrc ulong: val [
        "Add an integer to a register. Result is store in a register"
        <category: 'dsl binary alu'>
        self primAddI: regDst number to: regSrc number ulong: val
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
        <cCall: 'lightningAddI_UI' returning: #void args: #(#self #int #int #uint)>
    ]

    primAddI: regDstNumber to: regSrcNumber ulong: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningAddI_UL' returning: #void args: #(#self #int #int #ulong)>
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
        <cCall: 'lightningSubI_UI' returning: #void args: #(#self #int #int #uint)>
    ]

    subI: regDst to: regSrc ulong: val [
        "Add an integer to a register. Result is store in a register"
        <category: 'dsl binary alu'>
        self primSubI: regDst number to: regSrc number ulong: val
    ]

    primSubI: regDstNumber to: regSrcNumber ulong: val [
        "Add an integer to a register. Result is store in a register
         This is a private primitive use #addI:to:ont: instead"
        <category: 'private dsl binary alu'>
        <cCall: 'lightningSubI_UI' returning: #void args: #(#self #int #int #ulong)>
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

    mulI: regDst to: regSrc int:val [
	<category: 'dsl binary alu'>
	self primMulI: regDst number to: regSrc number int: val
    ]

    primMulI: regDstNum to: regSrcNum int: val [
	<category: 'private dsl binary alu'>
	<cCall: 'lightningMulI_I' returning: #void args: #(#self #int #int #int)>
    ]

    mulI: regDst to: regSrc uint:val [
	<category: 'dsl binary alu'>
	self primMulI: regDst number to: regSrc number uint: val
    ]

    primMulI: regDstNum to: regSrcNum uint: val [
	<category: 'private dsl binary alu'>
	<cCall: 'lightningMulI_UI' returning: #void args: #(#self #int #int #uint)>
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

    lshI: regDst to: regSrc uint: val [
	<category: 'dsl binary alu'>
	self primLshI: regDst number to: regSrc number uint: val
    ]

    primLshI: regDstNumber to: regSrcNumber uint: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLshI_UI' returning: #void args: #(#self #int #int #uint)>
    ]

    lshI: regDst to: regSrc int: val [
	<category: 'dsl binary alu'>
	self primLshI: regDst number to: regSrc number int: val
    ]

    primLshI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLshI_I' returning: #void args: #(#self #int #int #int)>
    ]

    lshR: regDst to: regSrc1 and: regSrc2 [
	<category: 'dsl binary alu'>
	self primLshR: regDst number to: regSrc1 number and: regSrc2 number
    ]

    primLshR: regDstNumber to: regSrcNum1 and: regSrcNum2 [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningLshR_I' returning: #void args: #(#self #int #int #int)>
    ]

    rshI: regDst to: regSrc int: val [
	<category: 'dsl binary alu'>
	self primRshI: regDst number to: regSrc number int: val
    ]

    primRshI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningRshI_I' returning: #void args: #(#self #int #int #int)>
    ]

    primRshI: regDstNumber to: regSrcNumber int: val [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningRshI_UI' returning: #void args: #(#self #int #int #int)>
    ]

    rshR: regDst to: regSrc1 and: regSrc2 [
	<category: 'private dsl binary alu'>
	self primRshR: regDst number to: regSrc1 number and: regSrc2 number
    ]

    primRshR: regDstNumber to: regSrcNum1 and: regSrcNum2 [
        <category: 'private dsl binary alu'>
        <cCall: 'lightningRshR_I' returning: #void args: #(#self #int #int #int)>
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

    valueReturningType: retType [
	"call the generated method and return the result"
	<category: 'dsl stack'>
	| cFunc |
	cFunc := CFunctionDescriptor 
            for: 'lightningValue' 
	    returning: retType 
	    withArgs: #(#self).
	^(cFunc callInto: ValueHolder new) value.
    ]

    value: anArg [
        "call the generated method and return the result"
        <category: 'dsl stack'>
        <cCall: 'lightningValueWith' returning: #int args: #(#self #long)>
    ]

    value: anArg argType: argType returningType: retType [
	| cFunc |
	cFunc := CFunctionDescriptor 
            for: 'lightningValueWith' 
	    returning: retType 
	    withArgs: (Array with: #self with: argType).
	^(cFunc callInto: ValueHolder new) value.
    ] 

    valueObject: anArg [
        "call the generated method and return the result"
        <category: 'dsl stack'>
        <cCall: 'lightningValueWithPtr' returning: #int args: #(#self #smalltalk)>
    ]

    movI: reg fromString: aString [
	"Move string to a register"
	<category: 'dsl transfer'>

	self primMovI: reg number fromString: aString
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

    movI: reg fromUL: int [
        "Move unsigned integer to a register"
        <category: 'dsl transfer'>
        self primMovI: reg number fromUL: int
    ]

    primMovI: regNumber fromString: ptr [
        "Move string to a register
         This is a private primitive use #movI:fromP: instead"
        <category: 'dsl transfer'>

        <cCall: 'lightningMovI_P' returning: #void args: #(#self #int #string)>
    ]

    primMovI: regNumber fromP: ptr [
	"Move pointer to a register
	 This is a private primitive use #movI:fromP: instead"
	<category: 'dsl transfer'>
	<cCall: 'lightningMovI_P' returning: #void args: #(#self #int #smalltalk)>
    ]

    primMovI: regNumber fromUI: int [
        "Move unsigned integer to a register
         This is a private primitive use #movI:fromP: instead"
        <category: 'private-primitive'>
        <cCall: 'lightningMovI_UI' returning: #void args: #(#self #int #uint)>
    ]

    primMovI: regNumber fromUL: int [
        "Move unsigned integer to a register
         This is a private primitive use #movI:fromP: instead"
        <category: 'private-primitive'>
        <cCall: 'lightningMovI_UL' returning: #void args: #(#self #int #ulong)>
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

    branch: dir reg: reg1 regEqualToUL: reg2 [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
        ^ self primBranch: dir reg: reg1 number regEqualToUL: reg2 number
    ]

    primBranch: dir reg: regNumber1 regEqualToUL: regNumber2 [
        "Jump to direction if reg < int "
        <category: 'private-primitive'>
        <cCall: 'lightningBeqR_UL' returning: #int args: #(#self #int #int #int)>
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

"sti"
    storeImC: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImC: im fromReg: regSrc number
    ]

    primStoreImC: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_C' returning: #void args: #(#self #ulong #int)>
    ]

    storeImS: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImS: im fromReg: regSrc number
    ]

    primStoreImS: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_S' returning: #void args: #(#self #ulong #int)>
    ]

    storeImI: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImI: im fromReg: regSrc number
    ]

    primStoreImI: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_I' returning: #void args: #(#self #ulong #int)>
    ]

    storeImL: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImL: im fromReg: regSrc number
    ]

    primStoreImL: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_L' returning: #void args: #(#self #ulong #int)>
    ]
"sti unsigned"
    storeImUC: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImUC: im fromReg: regSrc number
    ]

    primStoreImUC: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_UC' returning: #void args: #(#self #ulong #int)>
    ]

    storeImUS: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImUS: im fromReg: regSrc number
    ]

    primStoreImUS: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_US' returning: #void args: #(#self #ulong #int)>
    ]

    storeImUI: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImUI: im fromReg: regSrc number
    ]

    primStoreImUI: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_UI' returning: #void args: #(#self #ulong #int)>
    ]

    storeImUL: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImUL: im fromReg: regSrc number
    ]

    primStoreImUL: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_UL' returning: #void args: #(#self #ulong #int)>
    ]

    storeImP: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImP: im fromReg: regSrc number
    ]

    primStoreImP: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_P' returning: #void args: #(#self #ulong #int)>
    ]

    storeImF: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImF: im fromReg: regSrc number
    ]

    primStoreImF: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_F' returning: #void args: #(#self #ulong #int)>
    ]

    storeImD: im fromReg: regSrc [
	<category: 'store'>
	self primStoreImD: im fromReg: regSrc number
    ]

    primStoreImD: im fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStI_D' returning: #void args: #(#self #ulong #int)>
    ]
"str"
    storeC: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreC: regDest number fromReg: regSrc number
    ]

    primStoreC: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_C' returning: #void args: #(#self #int #int)>
    ]

    storeS: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreS: regDest number fromReg: regSrc number
    ]

    primStoreS: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_S' returning: #void args: #(#self #int #int)>
    ]

    storeI: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreI: regDest number fromReg: regSrc number
    ]

    primStoreI: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_I' returning: #void args: #(#self #int #int)>
    ]

    storeL: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreL: regDest number fromReg: regSrc number
    ]

    primStoreL: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_L' returning: #void args: #(#self #int #int)>
    ]
"str unsigned"

    storeUC: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreUC: regDest number fromReg: regSrc number
    ]

    primStoreUC: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_UC' returning: #void args: #(#self #int #int)>
    ]

    storeUS: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreUS: regDest number fromReg: regSrc number
    ]

    primStoreUS: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_US' returning: #void args: #(#self #int #int)>
    ]

    storeUI: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreUI: regDest number fromReg: regSrc number
    ]

    primStoreUI: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_UI' returning: #void args: #(#self #int #int)>
    ]

    storeUL: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreUL: regDest number fromReg: regSrc number
    ]

    primStoreUL: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_UL' returning: #void args: #(#self #int #int)>
    ]

    storeP: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreP: regDest number fromReg: regSrc number
    ]

    primStoreP: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_P' returning: #void args: #(#self #int #int)>
    ]

    storeF: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreF: regDest number fromReg: regSrc number
    ]

    primStoreF: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_F' returning: #void args: #(#self #int #int)>
    ]

    storeD: regDest fromReg: regSrc [
	<category: 'store'>
	self primStoreD: regDest number fromReg: regSrc number
    ]

    primStoreD: regDest fromReg: regSrc [
	<category: 'primitive store'>
	<cCall: 'lightningStR_D' returning: #void args: #(#self #int #int)>
    ]
"stxi"
    storeImC: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImC: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImC: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_C' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImS: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImS: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImS: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_S' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImI: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImI: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImI: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_I' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImL: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImL: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImL: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_L' returning: #void args: #(#self #uint #int #int)>
    ]

"stxi unsigned"
    storeImUC: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImUC: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImUC: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_UC' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImUS: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImUS: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImUS: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_US' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImUI: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImUI: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImUI: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_UI' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImUL: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImUL: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImUL: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_UL' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImP: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImP: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImP: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_P' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImF: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImF: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImF: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_F' returning: #void args: #(#self #uint #int #int)>
    ]

    storeImD: iDest and: regDest fromReg: regSrc  [
        <category: 'store'>

        self primStoreImD: iDest and: regDest number fromReg: regSrc number
    ]

    primStoreImD: iDest and: regNumDest fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxI_D' returning: #void args: #(#self #uint #int #int)>
    ]
"stxr"
    storeRegC: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegC: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegC: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_C' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegS: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegS: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegS: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_S' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegI: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegI: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegI: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_I' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegL: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegL: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegL: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_L' returning: #void args: #(#self #int #int #int)>
    ]
"stxr unsigned"
    storeRegUC: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegUC: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegUC: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_UC' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegUS: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegUS: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegUS: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_US' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegUI: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegUI: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegUI: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegUL: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegUL: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegUL: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_UL' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegP: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegP: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegP: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_P' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegF: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegF: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegF: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_F' returning: #void args: #(#self #int #int #int)>
    ]

    storeRegD: regDest1 and: regDest2 fromReg: regSrc  [
        <category: 'store'>

        self primStoreRegD: regDest1 number and: regDest2 number fromReg: regSrc number
    ]

    primStoreRegD: regNumDest1 and: regNumDest2 fromReg: regNumSrc [
	<category: 'primitive store'>

        <cCall: 'lightningStxR_D' returning: #void args: #(#self #int #int #int)>
    ]
"ldr"
    loadC: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadC: regDest number fromReg: regSrc number
    ]

    primLoadC: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_C' returning: #void args: #(#self #int #int)> 
    ]

    loadS: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadS: regDest number fromReg: regSrc number
    ]

    primLoadS: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_S' returning: #void args: #(#self #int #int)> 
    ]

    loadI: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadI: regDest number fromReg: regSrc number
    ]

    primLoadI: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_I' returning: #void args: #(#self #int #int)> 
    ]

    loadL: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadL: regDest number fromReg: regSrc number
    ]

    primLoadL: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_L' returning: #void args: #(#self #int #int)> 
    ]

"ldr unsigned"
    loadUC: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadUC: regDest number fromReg: regSrc number
    ]

    primLoadUC: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_UC' returning: #void args: #(#self #int #int)> 
    ]

    loadUS: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadUS: regDest number fromReg: regSrc number
    ]

    primLoadUS: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_US' returning: #void args: #(#self #int #int)> 
    ]

    loadUI: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadUI: regDest number fromReg: regSrc number
    ]

    primLoadUI: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_UI' returning: #void args: #(#self #int #int)> 
    ]

    loadUL: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadUL: regDest number fromReg: regSrc number
    ]

    primLoadUL: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_UL' returning: #void args: #(#self #int #int)> 
    ]

    loadP: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadP: regDest number fromReg: regSrc number
    ]

    primLoadP: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_P' returning: #void args: #(#self #int #int)> 
    ]

    loadF: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadF: regDest number fromReg: regSrc number
    ]

    primLoadF: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_F' returning: #void args: #(#self #int #int)> 
    ]

    loadD: regDest fromReg: regSrc [
        <category: 'load'>

	^ self primLoadD: regDest number fromReg: regSrc number
    ]

    primLoadD: regNumDest fromReg: regNumSrc [
	<category: 'primitive load'>
    
	<cCall: 'lightningLdR_D' returning: #void args: #(#self #int #int)> 
    ]
"ldi"
    loadC: regDest im: in [
	<category: 'load'>
	
	self primLoadC: regDest number im: in
    ]

    primLoadC: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_S' returning: #void args: #(#self #int #ulong)>
    ]

    loadS: regDest im: in [
	<category: 'load'>
	
	self primLoadS: regDest number im: in
    ]

    primLoadS: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_S' returning: #void args: #(#self #int #ulong)>
    ]

    loadI: regDest im: in [
	<category: 'load'>
	
	self primLoadI: regDest number im: in
    ]

    primLoadI: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_I' returning: #void args: #(#self #int #ulong)>
    ]

    loadL: regDest im: in [
	<category: 'load'>
	
	self primLoadL: regDest number im: in
    ]

    primLoadL: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_L' returning: #void args: #(#self #int #ulong)>
    ]

"ldi unsigned"
    loadUC: regDest im: in [
	<category: 'load'>
	
	self primLoadUC: regDest number im: in
    ]

    primLoadUC: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_UC' returning: #void args: #(#self #int #ulong)>
    ]

    loadUS: regDest im: in [
	<category: 'load'>
	
	self primLoadUS: regDest number im: in
    ]

    primLoadUS: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_US' returning: #void args: #(#self #int #ulong)>
    ]

    loadUI: regDest im: in [
	<category: 'load'>
	
	self primLoadUI: regDest number im: in
    ]

    primLoadUI: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_UI' returning: #void args: #(#self #int #ulong)>
    ]

    loadUL: regDest im: in [
	<category: 'load'>
	
	self primLoadUL: regDest number im: in
    ]

    primLoadUL: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_UL' returning: #void args: #(#self #int #ulong)>
    ]

    loadP: regDest im: in [
	<category: 'load'>
	
	self primLoadP: regDest number im: in
    ]

    primLoadP: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_P' returning: #void args: #(#self #int #ulong)>
    ]

    loadF: regDest im: in [
	<category: 'load'>
	
	self primLoadF: regDest number im: in
    ]

    primLoadF: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_F' returning: #void args: #(#self #int #ulong)>
    ]

    loadD: regDest im: in [
	<category: 'load'>
    
	self primLoadD: regDest number im: in
    ]

    primLoadD: regNumDest im: in [
	<category: 'primitive load'>

	<cCall: 'lightningLdI_D' returning: #void args: #(#self #int #ulong)>
    ]

"LxR"

    loadC: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadC: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadC: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_C' returning: #void args: #(#self #int #int #int)>
    ]

    loadS: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadS: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadS: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_S' returning: #void args: #(#self #int #int #int)>
    ]

    loadI: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadI: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadI: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_I' returning: #void args: #(#self #int #int #int)>
    ]

    loadL: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadI: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadL: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_L' returning: #void args: #(#self #int #int #int)>
    ]

"LxR Unsigned"

    loadUC: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadUC: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadUC: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_UC' returning: #void args: #(#self #int #int #int)>
    ]

    loadUS: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadUS: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadUS: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_US' returning: #void args: #(#self #int #int #int)>
    ]

    loadUI: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadUI: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadUI: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_UI' returning: #void args: #(#self #int #int #int)>
    ]

    loadUL: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadUI: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadUL: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_UL' returning: #void args: #(#self #int #int #int)>
    ]

    loadP: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadP: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadP: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_P' returning: #void args: #(#self #int #int #int)>
    ]

    loadF: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadF: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadF: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_F' returning: #void args: #(#self #int #int #int)>
    ]

    loadD: regDest fromReg: regSrc1 and: regSrc2 [
        <category: 'load'>

        ^ self primLoadD: regDest number fromReg: regSrc1 number and: regSrc2 number
    ]

    primLoadD: regNumDest fromReg: regNumSrc1 and: regNumSrc2 [
        <category: 'primitive load'>

        <cCall: 'lightningLdxR_D' returning: #void args: #(#self #int #int #int)>
    ]

"Lxi"
    loadC: regNumDest fromReg: regNumSrc im: in [
        <category: 'load'>

	self primLoadC: regNumDest number fromReg: regNumSrc number im: in
    ]

    primLoadC: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

        <cCall: 'lightningLdxI_C' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadS: regNumDest fromReg: regNumSrc im: in [
        <category: 'load'>

	self primLoadS: regNumDest number fromReg: regNumSrc number im: in
    ]

    primLoadS: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

        <cCall: 'lightningLdxI_S' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadI: regNumDest fromReg: regNumSrc im: in [
        <category: 'load'>

	self primLoadI: regNumDest number fromReg: regNumSrc number im: in
    ]

    primLoadI: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

        <cCall: 'lightningLdxI_I' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadL: regNumDest fromReg: regNumSrc im: in [
        <category: 'load'>

	self primLoadL: regNumDest number fromReg: regNumSrc number im: in
    ]

    primLoadL: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

        <cCall: 'lightningLdxI_L' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadUC: regDest fromReg: regSrc im: in [
        <category: 'load'>

        self primLoadUC: regDest number fromReg: regSrc number im: in
    ]

    primLoadUC: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

	<cCall: 'lightningLdxI_UC' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadUS: regDest fromReg: regSrc im: in [
        <category: 'load'>

        self primLoadUS: regDest number fromReg: regSrc number im: in
    ]

    primLoadUS: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

	<cCall: 'lightningLdxI_US' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadUI: regDest fromReg: regSrc im: in [
        <category: 'load'>

        self primLoadUI: regDest number fromReg: regSrc number im: in
    ]

    primLoadUI: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

	<cCall: 'lightningLdxI_UI' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadUL: regDest fromReg: regSrc im: in [
        <category: 'load'>

        self primLoadUL: regDest number fromReg: regSrc number im: in
    ]

    primLoadUL: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

	<cCall: 'lightningLdxI_UL' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadP: regDest fromReg: regSrc im: in [
	<category: 'load'>
	
	self primLoadP: regDest number fromReg: regSrc number im: in 
    ]

    primLoadP: regNumDest fromReg: regNumSrc im: in [
        <category: 'primitive load'>

        <cCall: 'lightningLdxI_P' returning: #void args: #(#self #int #int #ulong)>
    ]

    loadF: regDest fromReg: regSrc im: in [
	<category: 'load'>
	
	self primLoadF: regDest number fromReg: regSrc number im: in 
    ]
    
    primLoadF: regNumDest fromReg: reggNumSrc im: in [
        <category: 'private load'>

        <cCall: 'lightningLdxI_F' returning: #void args: #(#self #int #int #ulong)>
    ]
    
    loadD: regDest fromReg: regSrc im: in [
	<category: 'load'>

	self primLoadD: regDest number fromReg: regSrc number im: in
    ]

    primLoadD: regNumDest fromReg: regNumSrc im: in [
        <category: 'private load'>

        <cCall: 'lightningLdxI_D' returning: #void args: #(#self #int #int #ulong)>
    ]
    
    testStaticIntAddress [
	"Only for test don't use it"
	<category: 'testes'>

	<cCall: 'lightningTestStaticIntAddress' returning: #ulong args: #()>
    ]

    testStaticInt [
	"Only for test don't use it"
	<category: 'testes'>

	<cCall: 'lightningTestStaticInt' returning: #ulong args: #()>
    ]

    fetchOop: regDest fromOopReg: regSrc at: offset [
	<category: 'oop load'>
	self 
	    loadP: regSrc fromReg: regSrc;
	    loadP: regDest fromReg: regSrc im: ((offset - 1) * self sizeOfOop) + self sizeOfHeader
    ]

    fetchOop: regDest fromObjectReg: regSrc at: offset [
	<category: 'oop load'>
	self 
	    loadP: regDest fromReg: regSrc im: ((offset - 1) * self sizeOfOop) + self sizeOfHeader
    ]

    fetchClassOop: regDest fromReg: regSrc [
	<category: 'oop load'>
	self 
	    loadP: regSrc fromReg: regSrc;
	    loadP: regDest fromReg: regSrc im: self sizeOfOop
    ]

    fromInt: regInt [
	<category: 'oop load'>
	self lshI: regInt to: regInt uint: 1.
	self addI: regInt to: regInt ulong: 1
    ]

    toInt: regOop [
	<category: 'oop load'>
	self rshI: regOop to: regOop int: 1
    ]

    jumpTo: label if: reg1 equal: reg2 [
	| ip |
	ip := jumpMap at: label ifAbsentPut: [self forward].
	self branch: ip reg: reg1 regEqualToUL: reg2 
    ]

    jumpLabel: label [
	| forward |
	forward := jumpMap at: label ifAbsent:[
	    ^jumpMap at: label put: self label
	].
	self patch: forward
    ]

    sizeOfOop [
	<category: 'accessing'>
	<cCall: 'lightningSizeOfOop' returning: #uint args: #()>
    ]

    sizeOfHeader [
	<category: 'accessing'>
	<cCall: 'lightningSizeOfHeader' returning: #uint args: #()>
    ]

    breakpoint [
	<category: 'debugging'>
	<cCall: 'lightningBreakpoint' returning: #void args: #(#self)>
    ]
]

