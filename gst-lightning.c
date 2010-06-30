#include "gst-lightning.h"

static VMProxy *_gst_vm_proxy;

/* ALU */
void
addi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addi_i (i, j, k);
#undef _jit
}

void
addr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_addr_i (i, j, k);
#undef _jit
}

void
addci_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_addci_i (i, j, k);
#undef _jit
}

void
addcr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_addcr_i (i, j, k);
#undef _jit
}

void
addxi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_addxi_i (i, j, k);
#undef _jit
}

void
addxr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_addxr_i (i, j, k);
#undef _jit
}

void
andi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_andi_i (i, j, k);
#undef _jit
}

void
andr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_andr_i (i, j, k);
#undef _jit
}

void
orr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_orr_i (i, j, k);
#undef _jit
}

void
subr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_subr_i (i, j, k);
#undef _jit
}

void
subcr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_subcr_i (i, j, k);
#undef _jit
}

void
subxr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_subxr_i (i, j, k);
#undef _jit
}

void
subxi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_subxi_i (i, j, k);
#undef _jit
}

void
xorr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_xorr_i (i, j, k);
#undef _jit
}

void
ori_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ori_i (i, j, k);
#undef _jit
}

void
xori_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_xori_i (i, j, k);
#undef _jit
}

void
muli_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_muli_i (i, j, k);
#undef _jit
}

void
mulr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_mulr_i (i, j, k);
#undef _jit
}

void
muli_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_muli_ui (i, j, k);
#undef _jit
}

void
mulr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_mulr_ui (i, j, k);
#undef _jit
}

void
hmuli_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_hmuli_i (i, j, k);
#undef _jit
}

void
hmulr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_hmulr_i (i, j, k);
#undef _jit
}

void
hmuli_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_hmuli_ui (i, j, k);
#undef _jit
}

void
hmulr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_hmulr_ui (i, j, k);
#undef _jit
}

void
divi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_divi_i (i, j, k);
#undef _jit
}

void
divi_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_divi_ui (i, j, k);
#undef _jit
}

void
modi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_modi_i (i, j, k);
#undef _jit
}

void
modi_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_modi_ui (i, j, k);
#undef _jit
}

void
divr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_divr_i (i, j, k);
#undef _jit
}

void
divr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_divr_ui (i, j, k);
#undef _jit
}

void
modr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_modr_i (i, j, k);
#undef _jit
}

void
modr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_modr_ui (i, j, k);
#undef _jit
}

/*void
shift (jit_stack *jitStack, char i, char j, char k, l)
{ #define _jit (jitStack->state)
	jit_shift (i, j, k, l);
#undef _jit 
	} 
*/

void
lshi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_lshi_i (i, j, k);
#undef _jit
}

void
rshi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_rshi_i (i, j, k);
#undef _jit
}

void
rshi_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_rshi_ui (i, j, k);
#undef _jit
}

void
lshr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_lshr_i (i, j, k);
#undef _jit
}

void
rshr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_rshr_i (i, j, k);
#undef _jit
}

void
rshr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_rshr_ui (i, j, k);
#undef _jit
}

void
retval_i (jit_stack * jitStack, char i)
{
#define _jit (jitStack->state)
  jit_retval_i (i);
#undef _jit
}

void
negr_i (jit_stack * jitStack, char i, char j)
{
#define _jit (jitStack->state)
  jit_negr_i (i, j);
#undef _jit
}

void
movr_i (jit_stack * jitStack, char i, char j)
{
#define _jit (jitStack->state)
  jit_movr_i (i, j);
#undef _jit
}

void
movi_i (jit_stack * jitStack, char i, char j)
{
#define _jit (jitStack->state)
  jit_movi_i (i, j);
#undef _jit
}

void
ntoh_ui (jit_stack * jitStack, char i, char j)
{
#define _jit (jitStack->state)
  jit_ntoh_ui (i, j);
#undef _jit
}

void
ntoh_us (jit_stack * jitStack, char i, char j)
{
#define _jit (jitStack->state)
  jit_ntoh_us (i, j);
#undef _jit
}

/* Boolean */

void
ltr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ltr_i (i, j, k);
#undef _jit
}

void
ler_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ler_i (i, j, k);
#undef _jit
}

void
gtr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_gtr_i (i, j, k);
#undef _jit
}

void
ger_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ger_i (i, j, k);
#undef _jit
}

void
eqr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_eqr_i (i, j, k);
#undef _jit
}

void
ner_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ner_i (i, j, k);
#undef _jit
}

void
ltr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ltr_ui (i, j, k);
#undef _jit
}

void
ler_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ler_ui (i, j, k);
#undef _jit
}

void
gtr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_gtr_ui (i, j, k);
#undef _jit
}

void
ger_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_ger_ui (i, j, k);
#undef _jit
}

void
lti_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_lti_i (i, j, k);
#undef _jit
}

void
lei_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_lei_i (i, j, k);
#undef _jit
}

void
gti_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_gti_i (i, j, k);
#undef _jit
}

void
gei_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_gei_i (i, j, k);
#undef _jit
}

void
eqi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_eqi_i (i, j, k);
#undef _jit
}

void
nei_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_nei_i (i, j, k);
#undef _jit
}

void
lti_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_lti_ui (i, j, k);
#undef _jit
}

void
lei_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_lei_ui (i, j, k);
#undef _jit
}

void
gti_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_gti_ui (i, j, k);
#undef _jit
}

void
gei_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_gei_ui (i, j, k);
#undef _jit
}

/* Jump */
void
bltr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bltr_i (i, j, k);
#undef _jit
}

void
bler_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bler_i (i, j, k);
#undef _jit
}

void
bgtr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bgtr_i (i, j, k);
#undef _jit
}

void
bger_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bger_i (i, j, k);
#undef _jit
}

void
beqr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_beqr_i (i, j, k);
#undef _jit
}

void
bner_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bner_i (i, j, k);
#undef _jit
}

void
bltr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bltr_ui (i, j, k);
#undef _jit
}

void
bler_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bler_ui (i, j, k);
#undef _jit
}

void
bgtr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bgtr_ui (i, j, k);
#undef _jit
}

void
bger_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bger_ui (i, j, k);
#undef _jit
}

void
bmsr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bmsr_i (i, j, k);
#undef _jit
}

void
bmcr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bmcr_i (i, j, k);
#undef _jit
}

void
boaddr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_boaddr_i (i, j, k);
#undef _jit
}

void
bosubr_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bosubr_i (i, j, k);
#undef _jit
}

void
boaddr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_boaddr_ui (i, j, k);
#undef _jit
}

void
bosubr_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bosubr_ui (i, j, k);
#undef _jit
}

void
blti_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_blti_i (i, j, k);
#undef _jit
}

void
blei_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_blei_i (i, j, k);
#undef _jit
}

void
bgti_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bgti_i (i, j, k);
#undef _jit
}

void
bgei_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bgei_i (i, j, k);
#undef _jit
}

void
beqi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_beqi_i (i, j, k);
#undef _jit
}

void
bnei_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bnei_i (i, j, k);
#undef _jit
}

void
blti_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_blti_ui (i, j, k);
#undef _jit
}

void
blei_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_blei_ui (i, j, k);
#undef _jit
}

void
bgti_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bgti_ui (i, j, k);
#undef _jit
}

void
bgei_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bgei_ui (i, j, k);
#undef _jit
}

void
boaddi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_boaddi_i (i, j, k);
#undef _jit
}

void
bosubi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bosubi_i (i, j, k);
#undef _jit
}

void
boaddi_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_boaddi_ui (i, j, k);
#undef _jit
}

void
bosubi_ui (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bosubi_ui (i, j, k);
#undef _jit
}


void
bmsi_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bmsi_i (i, j, k);
#undef _jit
}

void
bmci_i (jit_stack * jitStack, char i, char j, char k)
{
#define _jit (jitStack->state)
  jit_bmci_i (i, j, k);
#undef _jit
}

void
jmpi (jit_stack * jitStack, char i)
{
#define _jit (jitStack->state)
  jit_jmpi (i);
#undef _jit
}

void
jmpr (jit_stack * jitStack, char i)
{
#define _jit (jitStack->state)
  jit_jmpr (i);
#undef _jit
}

/* Common */
jit_insn *
get_label (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_get_label ();
#undef _jit
}

jit_insn *
forward (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_forward ();
#undef _jit
}

jit_code
get_ip (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_get_ip ();
#undef _jit
}

void
set_ip (jit_stack * jitStack, jit_insn * ip)
{
#define _jit (jitStack->state)
  jit_set_ip (ip);
#undef _jit
}

void
leaf (jit_stack * jitStack, size_t numargs)
{
#define _jit (jitStack->state)
  jit_leaf (numargs);
#undef _jit
}

/* Args */
int
arg_c (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_c ();
#undef _jit
}

int
arg_uc (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_uc ();
#undef _jit
}

int
arg_s (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_s ();
#undef _jit
}

int
arg_us (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_us ();
#undef _jit
}

int
arg_i (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_i ();
#undef _jit
}

int
arg_ui (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_ui ();
#undef _jit
}

int
arg_l (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  jit_arg_l ();
#undef _jit
}

int
arg_ul (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_ul ();
#undef _jit
}

int
arg_p (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  return jit_arg_p ();
#undef _jit
}

void
getarg_c (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
  jit_getarg_c (reg, ofs);
#undef _jit
}

void
getarg_uc (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
  jit_getarg_uc (reg, ofs);
#undef _jit
}

void
getarg_s (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_s (reg, ofs);
#undef _jit
}

void
getarg_us (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_us (reg, ofs);
#undef _jit
}

void
getarg_i (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_i (reg, ofs);
#undef _jit
}

void
getarg_ui (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_ui (reg, ofs);
#undef _jit
}

void
getarg_l (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_l (reg, ofs);
#undef _jit
}

void
getarg_ul (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_ul (reg, ofs);
#undef _jit
}

void
getarg_p (jit_stack * jitStack, int reg, int ofs)
{
#define _jit (jitStack->state)
	jit_getarg_p (reg, ofs);
#undef _jit
}

/* Register access */
int
R0 ()
{
	return JIT_R0;
}

int
R1 ()
{
	return JIT_R1;
}

int
R2 ()
{
	return JIT_R2;
}

int
RET ()
{
	return JIT_RET;
}

/* Stack manipulation */
void
retFct (jit_stack * jitStack)
{
#define _jit (jitStack->state)
	jit_ret();
#undef _jit
}


/* Create a new jit_stack used by gst
 * It also allocate the code buffer of a insnSize bytes
 */
jit_stack *
alloc_jit_state (size_t insnSize)
{
  jit_stack * new_jit_stack;
  jit_insn * new_pc;
  new_pc = malloc (insnSize);
  new_jit_stack = malloc (sizeof (jit_stack));
  new_jit_stack->state.x.pc = new_pc;
  new_jit_stack->codeBuffer = new_pc;
  return new_jit_stack;
}

void
flush_code(jit_stack * jitStack)
{
#define _jit (jitStack->state)
	jit_flush_code (jitStack->codeBuffer, jit_get_ip ().ptr);
#undef _jit
}

int
i_value(jit_stack * jitStack, int arg)
{
#define _jit (jitStack->state)
	int result;
	pifi fct = (pifi)jitStack->codeBuffer;
	return fct(arg);
#undef _jit
}

void
gst_initModule (VMProxy * proxy)
{
  _gst_vm_proxy = proxy;
  _gst_vm_proxy->defineCFunc ("lightningAllocJitState", alloc_jit_state);
	_gst_vm_proxy->defineCFunc ("lightningIValue", i_value);
  _gst_vm_proxy->defineCFunc ("lightningFlushCode", flush_code);
  _gst_vm_proxy->defineCFunc ("lightningLeaf", leaf);
  _gst_vm_proxy->defineCFunc ("lightningArgI", arg_i);
  _gst_vm_proxy->defineCFunc ("lightningGetargI", getarg_i);
  _gst_vm_proxy->defineCFunc ("lightningR0", R0);
  _gst_vm_proxy->defineCFunc ("lightningR1", R1);
  _gst_vm_proxy->defineCFunc ("lightningR2", R2);
  _gst_vm_proxy->defineCFunc ("lightningRET", RET);
  _gst_vm_proxy->defineCFunc ("lightningRetFct", retFct);
  _gst_vm_proxy->defineCFunc ("lightningAddI_I", addi_i);
  _gst_vm_proxy->defineCFunc ("lightningAddR_I", addr_i);
  _gst_vm_proxy->defineCFunc ("lightningAddCR_I", addcr_i);
  _gst_vm_proxy->defineCFunc ("lightningAddXI_I", addxi_i);
  _gst_vm_proxy->defineCFunc ("lightningAddXR_I", addxr_i);
  _gst_vm_proxy->defineCFunc ("lightningAndI_I", andi_i);
  _gst_vm_proxy->defineCFunc ("lightningAndR_I", andr_i);
  _gst_vm_proxy->defineCFunc ("lightningOrR_I", orr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubR_I", subr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubCR_I", subcr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubXR_I", subxr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubXI_I", subxi_i);
  _gst_vm_proxy->defineCFunc ("lightningXorR_I", xorr_i);
  _gst_vm_proxy->defineCFunc ("lightningOrI_I", ori_i);
  _gst_vm_proxy->defineCFunc ("lightningXorI_I", xori_i);
  _gst_vm_proxy->defineCFunc ("lightningMulI_I", muli_i);
  _gst_vm_proxy->defineCFunc ("lightningMulR_I", mulr_i);
  _gst_vm_proxy->defineCFunc ("lightningMulI_UI", muli_ui);
  _gst_vm_proxy->defineCFunc ("lightningMulR_UI", mulr_ui);
  _gst_vm_proxy->defineCFunc ("lightningHMulI_I", hmuli_i);
  _gst_vm_proxy->defineCFunc ("lightningHMulR_I", hmulr_i);
  _gst_vm_proxy->defineCFunc ("lightningHMulI_UI", hmuli_ui);
  _gst_vm_proxy->defineCFunc ("lightningHMulR_UI", hmulr_ui);
  _gst_vm_proxy->defineCFunc ("lightningDivI_I", divi_i);
  _gst_vm_proxy->defineCFunc ("lightningDivI_UI", divi_ui);
  _gst_vm_proxy->defineCFunc ("lightningModI_I", modi_i);
  _gst_vm_proxy->defineCFunc ("lightningModI_UI", modi_ui);
  _gst_vm_proxy->defineCFunc ("lightningDivR_I", divr_i);
  _gst_vm_proxy->defineCFunc ("lightningDivR_UI", divr_ui);
  _gst_vm_proxy->defineCFunc ("lightningModR_I", modr_i);
  _gst_vm_proxy->defineCFunc ("lightningModR_UI", modr_ui);
  _gst_vm_proxy->defineCFunc ("lightningLshI_I", lshi_i);
  _gst_vm_proxy->defineCFunc ("lightningRshI_I", rshi_i);
  _gst_vm_proxy->defineCFunc ("lightningRshI_UI", rshi_ui);
  _gst_vm_proxy->defineCFunc ("lightningLshR_I", lshr_i);
  _gst_vm_proxy->defineCFunc ("lightningRshR_UI", rshr_ui);
  _gst_vm_proxy->defineCFunc ("lightningRetval_I", retval_i);
  _gst_vm_proxy->defineCFunc ("lightningNegR_I", negr_i);
  _gst_vm_proxy->defineCFunc ("lightningMovR_I", movr_i);
  _gst_vm_proxy->defineCFunc ("lightningMovI_I", movi_i);
  _gst_vm_proxy->defineCFunc ("lightningNtoH_UI", ntoh_ui);
  _gst_vm_proxy->defineCFunc ("lightningNtoH_US", ntoh_us);
  _gst_vm_proxy->defineCFunc ("lightningLtR_I", ltr_i);
  _gst_vm_proxy->defineCFunc ("lightningLeR_I", ler_i);
  _gst_vm_proxy->defineCFunc ("lightningGtR_I", gtr_i);
  _gst_vm_proxy->defineCFunc ("lightningGeR_I", ger_i);
  _gst_vm_proxy->defineCFunc ("lightningEqR_I", eqr_i);
  _gst_vm_proxy->defineCFunc ("lightningNeR_I", ner_i);
  _gst_vm_proxy->defineCFunc ("lightningLtR_UI", ltr_ui);
  _gst_vm_proxy->defineCFunc ("lightningLeR_UI", ler_ui);
  _gst_vm_proxy->defineCFunc ("lightningGtR_UI", gtr_ui);
  _gst_vm_proxy->defineCFunc ("lightningGeR_UI", ger_ui);
  _gst_vm_proxy->defineCFunc ("lightningLtI_I", lti_i);
  _gst_vm_proxy->defineCFunc ("lightningLeI_I", lei_i);
  _gst_vm_proxy->defineCFunc ("lightningGtI_I", gti_i);
  _gst_vm_proxy->defineCFunc ("lightningGeI_I", gei_i);
  _gst_vm_proxy->defineCFunc ("lightningEqI_I", eqi_i);
  _gst_vm_proxy->defineCFunc ("lightningNeI_I", nei_i);
  _gst_vm_proxy->defineCFunc ("lightningLtI_UI", lti_ui);
  _gst_vm_proxy->defineCFunc ("lightningLeI_UI", lei_ui);
  _gst_vm_proxy->defineCFunc ("lightningGtI_UI", gti_ui);
  _gst_vm_proxy->defineCFunc ("lightningGeI_UI", gei_ui);
}

/* Local Variables: */
/* mode:c           */
/* c-basic-offset:2 */
/* tab-width:2      */
/* End:             */
