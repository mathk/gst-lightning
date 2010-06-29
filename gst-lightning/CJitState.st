CObject subclass: CJitState [

	CJitState class >> primAlloc: nByte [
	"Allocate a new jit_state that hold the assembly code"
	<category: 'primitive allocation'>
	<cCall: 'lightningAllocJitState' returning: #{CJitState} args: #(#ulong)>
	]

	leaf: numargs [
	"Initialize and set the number of argument"
	<category: 'initialize'>
	<cCall: 'lightningLeaf' returning: #void args: #(#self #ulong)>
	]

	leaf [
	"Initialize and set the number of argument to 0"
	self leaf: 0.
	]
]
