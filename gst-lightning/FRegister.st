Register subclass: FRegister [

    FRegister class >> initialize [
	<category: 'initialize'>

	JIT_FPR0 := self new.
	JIT_FPR1 := self new.
	JIT_FPR2 := self new.
	JIT_FPR3 := self new.
	JIT_FPR4 := self new.
	JIT_FPR5 := self new.
	JIT_FPR6 := self new.
    ]
]

Eval [
    FRegister initialize
]

