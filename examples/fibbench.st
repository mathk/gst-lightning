Eval [
    | b1 b2 ref loop fibfct |

    PackageLoader fileInPackage: 'Lightning'.

    jitState := Lightning.CJitState new.
    jitState
        leaf: 1;
        getargInt: Lightning.R2 from: jitState argInt;
        movI: Lightning.R1 fromUI: 1.
    ref := jitState branch: jitState forward reg: Lightning.R2 lowerThanUI: 2.
    jitState 
        subI: Lightning.R2 to: Lightning.R2 uint: 1;
        movI: Lightning.R0 fromUI: 1.
    loop := jitState label.
    jitState
        subI: Lightning.R2 to: Lightning.R2 uint: 1;
        addR: Lightning.V0 to: Lightning.R0 uint: Lightning.R1;
        movR: Lightning.R0 fromUI: Lightning.R1;
        addI: Lightning.R1 to: Lightning.V0 uint: 1;
        branch: loop reg: Lightning.R2 notEqualToUI: 0;
        patch: ref;
        movR: Lightning.RET fromUI: Lightning.R1;
        ret;
        assemble.
	fibfct := [ :each | |  r0 r1 r2 vo |
        r2 := each.
        r1 := 1.
        (r2 := r2 - 1)  > 2 ifTrue: [
			r0 := 1.
			[ r2 = 0 ] whileFalse: [
                    r2 := r2 - 1.
                    v0 := r0 + r1.
                    r0 := r1.
                    r1 := v0 + 1 ].
			r1  ] ].
    b1 := Time millisecondsToRun: [ 100000 timesRepeat: [ jitState value: 36 ] ].
    b2 := Time millisecondsToRun: [ 100000 timesRepeat: [ fibfct value: 36  ] ].

    'Fibonacci benchmark (results expressed in milli seconds) :' printNl.
    ('Time to run 100000 fib(36) with lightning: ', b1 asString) printNl.
    ('                           in Smalltalk:   ', b2 asString) printNl
]
