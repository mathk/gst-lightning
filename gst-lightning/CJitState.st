CObject subclass: CJitState [

	CJitState class >> primAlloc: nByte [
	"Allocate a new jit_state that hold the assembly code"
	<category: 'primitive allocation'>
	<cCall: 'lightningAllocJitState' returning: #{CJitState} args: #(#ulong)>
	]

	leaf: numargs [
	"Initialize and set the number of argument"
	<category: 'dsl initialize'>
	<cCall: 'lightningLeaf' returning: #void args: #(#self #ulong)>
	]

	leaf [
	"Initialize and set the number of argument to 0"
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
]
