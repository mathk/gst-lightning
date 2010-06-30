#ifndef GST_LIGHTNING_H
#define GST_LIGHTNING_H

#include <stdlib.h>
#include <gstpub.h>
#include <lightning.h>

#define JIT_REG(num) ((num) >= 0 && (num) < 3 ? \
					  JIT_R(num) : JIT_V((num) - 3))

#endif /* GST_LIGHTNING_H */
