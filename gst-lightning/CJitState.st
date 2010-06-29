CObject subclass: CJitState [

	CJitState class >> primAlloc: nByte [
	"Allocate a new jit_state that hold the assembly code"
	<category: 'primitive allocation'>
	<cCall: 'lightning_allocate_jit_state' returning: #{CJitState} args: #(#size_t)>
	]
]