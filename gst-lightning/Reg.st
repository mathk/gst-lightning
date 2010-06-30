" Hey Emacs, I want -*- tab-width: 8;  -*- "

Register subclass: R0 [
	R0 class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningR0' returning: #int args: #()>
	]
]

Register subclass: R1 [
	R1 class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningR1' returning: #int args: #()>
	]
]

Register subclass: R2 [
	R2 class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningR2' returning: #int args: #()>
	]
]

Register subclass: V0 [
	V0 class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningV0' returning: #int args: #()>
	]
]

Register subclass: V1 [
	V1 class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningV1' returning: #int args: #()>
	]
]

Register subclass: V2 [
	V2 class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningV2' returning: #int args: #()>
	]
]


Register subclass: RET [
	RET class >> number [
		"Return the lightning reg number"
		<category: 'accessing'>
		<cCall: 'lightningRET' returning: #int args: #()>
	]
]
