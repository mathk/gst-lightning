#ifndef GST_LIGHTNING_H
#define GST_LIGHTNING_H

#include <stdlib.h>
#include <gstpub.h>
#include <lightning.h>

typedef int (*pifi)(int);

typedef struct _jit_stack {
	jit_state   state;
	jit_insn    * codeBuffer;

} jit_stack;

#endif /* GST_LIGHTNING_H */

/* Local Variables: */
/* mode:c           */
/* c-basic-offset:2 */
/* tab-width:2      */
/* End:             */

