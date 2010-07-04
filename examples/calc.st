Eval [
    PackageLoader
            fileInPackage: 'Parser';
            fileInPackage: 'Lightning'
]

STInST.RBProgramNodeVisitor subclass: RBCalc [
    | jitState |

    initialize [
	<category: 'initialize-release'>

	super initialize.
	jitState := Lightning.CJitState new
					leaf;
					movI: Lightning.R0 fromUI: 0;
					movI: Lightning.R1 fromUI: 0;
					yourself
    ]

    acceptLiteralNode: aNode [
	<category: 'visitor'>

	aNode value isNumber ifFalse: [ ^ self error: 'Bad expression' ].
	jitState movI: Lightning.R0 fromUI: aNode value
    ]

    acceptMessageNode: aNode [
	<category: 'visitor'>

	self visitNode: aNode receiver.
	(aNode receiver isLiteral and: [ (aNode arguments first isLiteral and: [ aNode arguments first value isNumber ]) ]) ifTrue: [ 
		jitState movI: Lightning.R1 fromUI: aNode arguments first value ].
	(aNode receiver isLiteral not and: [ (aNode arguments first isLiteral and: [ aNode arguments first value isNumber ]) ]) ifTrue: [ 
		jitState movI: Lightning.R0 fromUI: aNode arguments first value ].
	aNode selector = #+ ifTrue: [ jitState addR: Lightning.R1 to: Lightning.R0 uint: Lightning.R1 ].
	aNode selector = #- ifTrue: [ jitState subR: Lightning.R1 to: Lightning.R1 uint: Lightning.R0 ].
	aNode selector = #* ifTrue: [ jitState mulR: Lightning.R1 to: Lightning.R0 uint: Lightning.R1 ].
	aNode selector = #/ ifTrue: [ jitState divR: Lightning.R1 to: Lightning.R1 uint: Lightning.R0 ].
    ]

    result [
	<category: 'accessing'>
	
	^ jitState
	    movR: Lightning.RET fromUI: Lightning.R1;
	    ret;
	    assemble;
	    yourself
    ]

]

Eval [
    | jit |
    jit := RBCalc new
		visitNode: (STInST.RBParser parseExpression: '2 + 1 * 2 + 4 * 2 - 1 + 1 / 2');
		result.

    jit value printNl
]
