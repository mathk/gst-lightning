Register subclass: IRegister [

    IRegister class >> initialize [
	<category: 'initialize'>

	JIT_R0 := self new.
	JIT_R1 := self new.
	JIT_R2 := self new.
	JIT_R3 := self new.
	JIT_R4 := self new.
	JIT_R5 := self new.
	JIT_R6 := self new.
    ]
]

Eval [
    IRegister initialize
]

