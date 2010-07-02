Eval [
    PackageLoader fileInPackage: 'Lightning'.

    DLD addLibrary: 'libc'.
    jitState := Lightning.CJitState new.
    jitState
        prolog: 0;
        movI: Lightning.R0 fromP: 'Hello World!';
        prepare: 1;
        pushargPtr: Lightning.R0;
        finish: (CFunctionDescriptor addressOf: 'puts');
        ret;
        assemble;
        value
]
