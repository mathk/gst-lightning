#include "gst-lightning.h"

static VMProxy *_gst_vm_proxy;
static long testInt = -1;

/* ALU */
void
addi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addi_i (i, j, k);
#undef _jit
}

void
addi_ui (jit_stack * jitStack, int i, int j, unsigned int k)
{
#define _jit (jitStack->state)
  jit_addi_ui (i, j, k);
#undef _jit
}

void
addi_ul (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_addi_ul (i, j, k);
#undef _jit
}

void
addr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addr_i (i, j, k);
#undef _jit
}

void
addr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addr_ui (i, j, k);
#undef _jit
}

void
addci_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addci_i (i, j, k);
#undef _jit
}

void
addcr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addcr_i (i, j, k);
#undef _jit
}

void
addxi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addxi_i (i, j, k);
#undef _jit
}

void
addxr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_addxr_i (i, j, k);
#undef _jit
}

void
subi_ui (jit_stack * jitStack, int i, int j, unsigned int k)
{
#define _jit (jitStack->state)
  jit_subi_ui (i, j, k);
#undef _jit
}

void
subi_ul (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_subi_ul (i, j, k);
#undef _jit
}

void
andi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_andi_i (i, j, k);
#undef _jit
}

void
andi_ul (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_andi_ul (i, j, k);
#undef _jit
}

void
andr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_andr_i (i, j, k);
#undef _jit
}

void
orr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_orr_i (i, j, k);
#undef _jit
}

void
subr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_subr_i (i, j, k);
#undef _jit
}

void
subr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_subr_ui (i, j, k);
#undef _jit
}

void
subcr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_subcr_i (i, j, k);
#undef _jit
}

void
subxr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_subxr_i (i, j, k);
#undef _jit
}

void
subxi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_subxi_i (i, j, k);
#undef _jit
}

void
xorr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_xorr_i (i, j, k);
#undef _jit
}

void
ori_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ori_i (i, j, k);
#undef _jit
}

void
xori_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_xori_i (i, j, k);
#undef _jit
}

void
muli_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_muli_i (i, j, k);
#undef _jit
}

void
mulr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_mulr_i (i, j, k);
#undef _jit
}

void
muli_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_muli_ui (i, j, k);
#undef _jit
}

void
mulr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_mulr_ui (i, j, k);
#undef _jit
}

void
hmuli_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_hmuli_i (i, j, k);
#undef _jit
}

void
hmulr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_hmulr_i (i, j, k);
#undef _jit
}

void
hmuli_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_hmuli_ui (i, j, k);
#undef _jit
}

void
hmulr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_hmulr_ui (i, j, k);
#undef _jit
}

void
divi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_divi_i (i, j, k);
#undef _jit
}

void
divi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_divi_ui (i, j, k);
#undef _jit
}

void
modi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_modi_i (i, j, k);
#undef _jit
}

void
modi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_modi_ui (i, j, k);
#undef _jit
}

void
divr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_divr_i (i, j, k);
#undef _jit
}

void
divr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_divr_ui (i, j, k);
#undef _jit
}

void
modr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_modr_i (i, j, k);
#undef _jit
}

void
modr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_modr_ui (i, j, k);
#undef _jit
}

void
lshi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lshi_i (i, j, k);
#undef _jit
}

void
lshi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lshi_ui (i, j, k);
#undef _jit
}

void
rshi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_rshi_i (i, j, k);
#undef _jit
}

void
rshi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_rshi_ui (i, j, k);
#undef _jit
}

void
lshr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lshr_i (i, j, k);
#undef _jit
}

void
rshr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_rshr_i (i, j, k);
#undef _jit
}

void
rshr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_rshr_ui (i, j, k);
#undef _jit
}

void
retval_i (jit_stack * jitStack, int i)
{
#define _jit (jitStack->state)
  jit_retval_i (i);
#undef _jit
}

void
negr_i (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_negr_i (i, j);
#undef _jit
}

void
notr_i (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_notr_i (i, j);
#undef _jit
}

void
movr_i (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_movr_i (i, j);
#undef _jit
}

void
movr_ui (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_movr_ui (i, j);
#undef _jit
}

void
movr_ul (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_movr_ul (i, j);
#undef _jit
}

void
movi_i (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_movi_i (i, j);
#undef _jit
}

void
movi_ui (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_movi_ui (i, j);
#undef _jit
}

void
movi_ul (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_movi_ul (i, j);
#undef _jit
}

jit_insn *
movi_p (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  return jit_movi_p (i, j);
#undef _jit
}

void
ntoh_ui (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ntoh_ui (i, j);
#undef _jit
}

void
ntoh_us (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ntoh_us (i, j);
#undef _jit
}

/* Boolean */

void
ltr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ltr_i (i, j, k);
#undef _jit
}

void
ler_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ler_i (i, j, k);
#undef _jit
}

void
gtr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_gtr_i (i, j, k);
#undef _jit
}

void
ger_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ger_i (i, j, k);
#undef _jit
}

void
eqr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_eqr_i (i, j, k);
#undef _jit
}

void
ner_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ner_i (i, j, k);
#undef _jit
}

void
ltr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ltr_ui (i, j, k);
#undef _jit
}

void
ler_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ler_ui (i, j, k);
#undef _jit
}

void
gtr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_gtr_ui (i, j, k);
#undef _jit
}

void
ger_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ger_ui (i, j, k);
#undef _jit
}

void
lti_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lti_i (i, j, k);
#undef _jit
}

void
lei_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lei_i (i, j, k);
#undef _jit
}

void
gti_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_gti_i (i, j, k);
#undef _jit
}

void
gei_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_gei_i (i, j, k);
#undef _jit
}

void
eqi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_eqi_i (i, j, k);
#undef _jit
}

void
nei_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_nei_i (i, j, k);
#undef _jit
}

void
lti_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lti_ui (i, j, k);
#undef _jit
}

void
lei_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_lei_ui (i, j, k);
#undef _jit
}

void
gti_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_gti_ui (i, j, k);
#undef _jit
}

void
gei_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_gei_ui (i, j, k);
#undef _jit
}

/* Jump */
jit_insn *
bltr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bltr_i (i, j, k);
#undef _jit
}

jit_insn *
bler_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bler_i (i, j, k);
#undef _jit
}

jit_insn *
bgtr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bgtr_i (i, j, k);
#undef _jit
}

jit_insn *
bger_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bger_i (i, j, k);
#undef _jit
}

jit_insn *
beqr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_beqr_i (i, j, k);
#undef _jit
}

jit_insn *
bner_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bner_i (i, j, k);
#undef _jit
}

jit_insn *
beqr_ul (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_beqr_ul (i, j, k);
#undef _jit
}

jit_insn *
beqi_ul (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  return jit_beqi_ul (i, j, k);
#undef _jit
}


jit_insn *
bltr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bltr_ui (i, j, k);
#undef _jit
}

jit_insn *
bler_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bler_ui (i, j, k);
#undef _jit
}

jit_insn *
bgtr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bgtr_ui (i, j, k);
#undef _jit
}

jit_insn *
bger_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bger_ui (i, j, k);
#undef _jit
}

jit_insn *
bmsr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bmsr_i (i, j, k);
#undef _jit
}

jit_insn *
bmcr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bmcr_i (i, j, k);
#undef _jit
}

jit_insn *
boaddr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_boaddr_i (i, j, k);
#undef _jit
}

jit_insn *
bosubr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bosubr_i (i, j, k);
#undef _jit
}

jit_insn *
boaddr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_boaddr_ui (i, j, k);
#undef _jit
}

jit_insn *
bosubr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bosubr_ui (i, j, k);
#undef _jit
}

jit_insn *
blti_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_blti_i (i, j, k);
#undef _jit
}

jit_insn *
blei_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_blei_i (i, j, k);
#undef _jit
}

jit_insn *
bgti_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bgti_i (i, j, k);
#undef _jit
}

jit_insn *
bgei_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bgei_i (i, j, k);
#undef _jit
}

jit_insn *
beqi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_beqi_i (i, j, k);
#undef _jit
}

jit_insn *
bnei_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bnei_i (i, j, k);
#undef _jit
}

jit_insn *
bnei_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bnei_ui (i, j, k);
#undef _jit
}

jit_insn *
blti_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_blti_ui (i, j, k);
#undef _jit
}

jit_insn *
blei_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_blei_ui (i, j, k);
#undef _jit
}

jit_insn *
bgti_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bgti_ui (i, j, k);
#undef _jit
}

jit_insn *
bgei_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bgei_ui (i, j, k);
#undef _jit
}

jit_insn *
boaddi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_boaddi_i (i, j, k);
#undef _jit
}

jit_insn *
bosubi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bosubi_i (i, j, k);
#undef _jit
}

jit_insn *
boaddi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_boaddi_ui (i, j, k);
#undef _jit
}

jit_insn *
bosubi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bosubi_ui (i, j, k);
#undef _jit
}


jit_insn *
bmsi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bmsi_i (i, j, k);
#undef _jit
}

jit_insn *
bmci_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  return jit_bmci_i (i, j, k);
#undef _jit
}

jit_insn *
jmpi (jit_stack * jitStack, unsigned long i)
{
#define _jit (jitStack->state)
  return jit_jmpi (i);
#undef _jit
}

void
jmpr (jit_stack * jitStack, int i)
{
#define _jit (jitStack->state)
   jit_jmpr (i);
#undef _jit
}

/* Store */
void
str_c (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_c (i, j);
#undef _jit
}

void
str_s (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_s (i, j);
#undef _jit
}

void
str_i (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_i (i, j);
#undef _jit
}

void
str_l (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_l (i, j);
#undef _jit
}

void
str_ui (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_ui (i, j);
#undef _jit
}

void
str_p (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_p (i, j);
#undef _jit
}

void
str_f (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_f (i, j);
#undef _jit
}

void
str_d (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_str_d (i, j);
#undef _jit
}

void
sti_c (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_c (i, j);
#undef _jit
}

void
sti_s (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_s (i, j);
#undef _jit
}

void
sti_i (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_i (i, j);
#undef _jit
}

void
sti_l (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_l (i, j);
#undef _jit
}

void
sti_uc (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_uc (i, j);
#undef _jit
}

void
sti_us (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_us (i, j);
#undef _jit
}

void
sti_ui (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_ui (i, j);
#undef _jit
}

void
sti_ul (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_ul (i, j);
#undef _jit
}

void
sti_p (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_p (i, j);
#undef _jit
}

void
sti_f (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_f (i, j);
#undef _jit
}

void
sti_d (jit_stack * jitStack, unsigned long i, int j)
{
#define _jit (jitStack->state)
  jit_sti_d (i, j);
#undef _jit
}

void
stxr_c (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_c (i, j, k);
#undef _jit
}

void
stxr_s (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_s (i, j, k);
#undef _jit
}

void
stxr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_i (i, j, k);
#undef _jit
}

void
stxr_l (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_l (i, j, k);
#undef _jit
}

void
stxr_uc (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_uc (i, j, k);
#undef _jit
}

void
stxr_us (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_us (i, j, k);
#undef _jit
}

void
stxr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_ui (i, j, k);
#undef _jit
}

void
stxr_ul (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_ul (i, j, k);
#undef _jit
}

void
stxr_p (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_p (i, j, k);
#undef _jit
}

void
stxr_f (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_f (i, j, k);
#undef _jit
}

void
stxr_d (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxr_d (i, j, k);
#undef _jit
}

void
stxi_c (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_c (i, j, k);
#undef _jit
}

void
stxi_s (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_s (i, j, k);
#undef _jit
}

void
stxi_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_i (i, j, k);
#undef _jit
}

void
stxi_l (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_l (i, j, k);
#undef _jit
}

void
stxi_uc (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_uc (i, j, k);
#undef _jit
}

void
stxi_us (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_us (i, j, k);
#undef _jit
}

void
stxi_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_ui (i, j, k);
#undef _jit
}

void
stxi_ul (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_ul (i, j, k);
#undef _jit
}

void
stxi_p (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_p (i, j, k);
#undef _jit
}

void
stxi_f (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_f (i, j, k);
#undef _jit
}

void
stxi_d (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_stxi_d (i, j, k);
#undef _jit
}

/* Load */
void
ldi_c (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_c (i, j);
#undef _jit
}

void
ldi_s (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_s (i, j);
#undef _jit
}

void
ldi_i (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_i (i, j);
#undef _jit
}

void
ldi_l (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_l (i, j);
#undef _jit
}

void
ldi_uc (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_uc (i, j);
#undef _jit
}

void
ldi_us (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_us (i, j);
#undef _jit
}

void
ldi_ui (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_ui (i, j);
#undef _jit
}

void
ldi_ul (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_ul (i, j);
#undef _jit
}

void
ldi_p (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_p (i, j);
#undef _jit
}

void
ldi_f (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_f (i, j);
#undef _jit
}

void
ldi_d (jit_stack * jitStack, int i, unsigned long j)
{
#define _jit (jitStack->state)
  jit_ldi_d (i, j);
#undef _jit
}

/* ldr */

void
ldr_c (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_c (i, j);
#undef _jit
}

void
ldr_s (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_s (i, j);
#undef _jit
}

void
ldr_i (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_i (i, j);
#undef _jit
}

void
ldr_l (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_l (i, j);
#undef _jit
}

void
ldr_uc (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_uc (i, j);
#undef _jit
}

void
ldr_us (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_us (i, j);
#undef _jit
}

void
ldr_ui (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_ui (i, j);
#undef _jit
}

void
ldr_ul (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_ul (i, j);
#undef _jit
}

void
ldr_p (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_p (i, j);
#undef _jit
}

void
ldr_f (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_f (i, j);
#undef _jit
}

void
ldr_d (jit_stack * jitStack, int i, int j)
{
#define _jit (jitStack->state)
  jit_ldr_d (i, j);
#undef _jit
}

void
ldxi_c (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_c (i, j, k);
#undef _jit
}

void
ldxi_s (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_s (i, j, k);
#undef _jit
}

void
ldxi_i (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_i (i, j, k);
#undef _jit
}

void
ldxi_l (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_l (i, j, k);
#undef _jit
}

void
ldxi_uc (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_uc (i, j, k);
#undef _jit
}

void
ldxi_us (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_us (i, j, k);
#undef _jit
}

void
ldxi_ui (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_ui (i, j, k);
#undef _jit
}

void
ldxi_ul (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_ul (i, j, k);
#undef _jit
}

void
ldxi_p (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_p (i, j, k);
#undef _jit
}

void
ldxi_f (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_f (i, j, k);
#undef _jit
}

void
ldxi_d (jit_stack * jitStack, int i, int j, unsigned long k)
{
#define _jit (jitStack->state)
  jit_ldxi_d (i, j, k);
#undef _jit
}

void
ldxr_c (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_c (i, j, k);
#undef _jit
}

void
ldxr_s (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_s (i, j, k);
#undef _jit
}

void
ldxr_i (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_i (i, j, k);
#undef _jit
}

void
ldxr_l (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_l (i, j, k);
#undef _jit
}

void
ldxr_uc (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_uc (i, j, k);
#undef _jit
}

void
ldxr_us (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_us (i, j, k);
#undef _jit
}

void
ldxr_ui (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_ui (i, j, k);
#undef _jit
}

void
ldxr_ul (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_ul (i, j, k);
#undef _jit
}

void
ldxr_p (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_p (i, j, k);
#undef _jit
}

void
ldxr_f (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_f (i, j, k);
#undef _jit
}

void
ldxr_d (jit_stack * jitStack, int i, int j, int k)
{
#define _jit (jitStack->state)
  jit_ldxr_d (i, j, k);
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

void
patch (jit_stack * jitStack, jit_insn * label)
{
#define _jit (jitStack->state)
  jit_patch (label);
#undef _jit
}

void
patch_movi (jit_stack * jitStack, jit_insn * label)
{
#define _jit (jitStack->state)
  jit_patch_movi (label, _jit.x.pc);
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

/* Function prolog */
void
leaf (jit_stack * jitStack, size_t numargs)
{
#define _jit (jitStack->state)
  jit_leaf (numargs);
#undef _jit
}

void
prolog (jit_stack * jitStack, size_t numargs)
{
#define _jit (jitStack->state)
  jit_prolog (numargs);
#undef _jit
}

/* Args */
void
prepare (jit_stack * jitStack, int i)
{
#define _jit (jitStack->state)
  jit_prepare (i);
#undef _jit
}

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

void
pusharg_i (jit_stack * jitStack, int reg)
{
#define _jit (jitStack->state)
  jit_pusharg_i (reg);
#undef _jit
}

void
pusharg_ul (jit_stack * jitStack, int reg)
{
#define _jit (jitStack->state)
  jit_pusharg_ul (reg);
#undef _jit
}

void
pusharg_p (jit_stack * jitStack, int reg)
{
#define _jit (jitStack->state)
  jit_pusharg_p (reg);
#undef _jit
}

void
finish (jit_stack * jitStack, void *fct)
{
#define _jit (jitStack->state)
  jit_finish (fct);
#undef _jit
}

void
retval (jit_stack * jitStack, int i)
{
#define _jit (jitStack->state)
  jit_retval (i);
#undef _jit
}

void
breakpoint (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  _jit_B (0xcc);
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
V0 ()
{
  return JIT_V0;
}

int
V1 ()
{
  return JIT_V1;
}

int
V2 ()
{
  return JIT_V2;
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
  jit_ret ();
#undef _jit
}

/* Create a new jit_stack used by gst
 * It also allocate the code buffer of a insnSize bytes
 */
jit_stack *
alloc_jit_state (size_t insnSize)
{
  jit_stack *new_jit_stack;
  new_jit_stack = calloc (1, sizeof (*new_jit_stack));
  new_jit_stack->state.x.pc = new_jit_stack->codeBuffer =
    calloc (insnSize, sizeof (*(new_jit_stack->codeBuffer)));
  return new_jit_stack;
}

void
flush_code (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  jit_flush_code (jitStack->codeBuffer, jit_get_ip ().ptr);
#undef _jit
}

/* Evaluation */

int
value (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  pif fct = (pifi) jitStack->codeBuffer;
  return fct ();
#undef _jit
}

int
valueWith (jit_stack * jitStack, long arg)
{
#define _jit (jitStack->state)
  pifl fct = (pifl) jitStack->codeBuffer;
  return fct (arg);
#undef _jit
}

int
valueWithPtr (jit_stack * jitStack, void *arg)
{
#define _jit (jitStack->state)
  pifp fct = (pifp) jitStack->codeBuffer;
  return fct (arg);
#undef _jit
}

void
statePrint (jit_stack * jitStack)
{
#define _jit (jitStack->state)
  int i;
  char info[385];
  unsigned char *current = jitStack->codeBuffer;
  unsigned char *endBuffer = jit_get_ip ().ptr;
  for (i = 0; i < 127 && current <= endBuffer; ++i, ++current)
    {
      snprintf (info + i * 3, 3, "%02X", *current);
      info[i * 3 + 2] = ' ';
    }
  if (i == 127)
    {
      snprintf (info + i * 3 - 1, 3, "...");
      i++;
    }
  info[i * 3 - 1] = '\0';
  OOP printInfo = _gst_vm_proxy->stringToOOP (info);
  _gst_vm_proxy->strMsgSend (printInfo, "print", NULL);

#undef _jit
}

void
stateDump (jit_stack * jitStack, char *fileName)
{
#define _jit (jitStack->state)
  FILE *dump = fopen (fileName, "w");
  printf ("Dump size : %d\n",
	  (unsigned int) jit_get_ip ().ptr -
	  (unsigned int) jitStack->codeBuffer);
  fwrite ((char *) jitStack->codeBuffer, 1,
	  (unsigned int) jit_get_ip ().ptr -
	  (unsigned int) jitStack->codeBuffer, dump);
  fclose (dump);
#undef _jit
}

void
statePrintAddr (jit_stack * jitStack)
{
	printf ("Stack addr: %x\n", (unsigned int)jitStack);
	printf ("Code buffer addr: %x\n", (unsigned int)jitStack->codeBuffer);
}

unsigned int
sizeOfOop ()
{
  return sizeof (OOP);
}

unsigned int
sizeOfHeader ()
{
  return sizeof (gst_object_header);
}

long *
testStaticIntAddress ()
{
  return &testInt;
}

long
testStaticInt ()
{
  return testInt;
}

void
gst_initModule (VMProxy * proxy)
{
  _gst_vm_proxy = proxy;
  _gst_vm_proxy->defineCFunc ("lightningPrint", statePrint);
  _gst_vm_proxy->defineCFunc ("lightningBreakpoint", breakpoint);
  _gst_vm_proxy->defineCFunc ("lightningDump", stateDump);
	_gst_vm_proxy->defineCFunc ("lightningPrintAddr", statePrintAddr);
  _gst_vm_proxy->defineCFunc ("lightningTestStaticInt", testStaticInt);
  _gst_vm_proxy->defineCFunc ("lightningTestStaticIntAddress",
			      testStaticIntAddress);
  _gst_vm_proxy->defineCFunc ("lightningSizeOfOop", sizeOfOop);
  _gst_vm_proxy->defineCFunc ("lightningSizeOfHeader", sizeOfHeader);
  _gst_vm_proxy->defineCFunc ("lightningAllocJitState", alloc_jit_state);
  _gst_vm_proxy->defineCFunc ("lightningFlushCode", flush_code);
  _gst_vm_proxy->defineCFunc ("lightningLeaf", leaf);
  _gst_vm_proxy->defineCFunc ("lightningProlog", prolog);
  _gst_vm_proxy->defineCFunc ("lightningPrepare", prepare);
  _gst_vm_proxy->defineCFunc ("lightningArgC", arg_c);
  _gst_vm_proxy->defineCFunc ("lightningArgUC", arg_uc);
  _gst_vm_proxy->defineCFunc ("lightningArgS", arg_s);
  _gst_vm_proxy->defineCFunc ("lightningArgUS", arg_us);
  _gst_vm_proxy->defineCFunc ("lightningArgI", arg_i);
  _gst_vm_proxy->defineCFunc ("lightningArgUI", arg_ui);
  _gst_vm_proxy->defineCFunc ("lightningArgL", arg_l);
  _gst_vm_proxy->defineCFunc ("lightningArgUL", arg_ul);
  _gst_vm_proxy->defineCFunc ("lightningArgP", arg_p);
  _gst_vm_proxy->defineCFunc ("lightningGetargC", getarg_c);
  _gst_vm_proxy->defineCFunc ("lightningGetargUC", getarg_uc);
  _gst_vm_proxy->defineCFunc ("lightningGetargS", getarg_s);
  _gst_vm_proxy->defineCFunc ("lightningGetargUS", getarg_us);
  _gst_vm_proxy->defineCFunc ("lightningGetargI", getarg_i);
  _gst_vm_proxy->defineCFunc ("lightningGetargUI", getarg_ui);
  _gst_vm_proxy->defineCFunc ("lightningGetargL", getarg_l);
  _gst_vm_proxy->defineCFunc ("lightningGetargUL", getarg_ul);
  _gst_vm_proxy->defineCFunc ("lightningGetargP", getarg_p);
  _gst_vm_proxy->defineCFunc ("lightningPusharg_I", pusharg_i);
  _gst_vm_proxy->defineCFunc ("lightningPusharg_P", pusharg_p);
  _gst_vm_proxy->defineCFunc ("lightningPusharg_UL", pusharg_ul);
  _gst_vm_proxy->defineCFunc ("lightningFinish", finish);
	_gst_vm_proxy->defineCFunc ("lightningRetVal", retval);
  _gst_vm_proxy->defineCFunc ("lightningR0", R0);
  _gst_vm_proxy->defineCFunc ("lightningR1", R1);
  _gst_vm_proxy->defineCFunc ("lightningR2", R2);
  _gst_vm_proxy->defineCFunc ("lightningV0", V0);
  _gst_vm_proxy->defineCFunc ("lightningV1", V1);
  _gst_vm_proxy->defineCFunc ("lightningV2", V2);
  _gst_vm_proxy->defineCFunc ("lightningRET", RET);
  _gst_vm_proxy->defineCFunc ("lightningRetFct", retFct);
  _gst_vm_proxy->defineCFunc ("lightningValue", value);
  _gst_vm_proxy->defineCFunc ("lightningValueWith", valueWith);
  _gst_vm_proxy->defineCFunc ("lightningValueWithPtr", valueWithPtr);

  _gst_vm_proxy->defineCFunc ("lightningAddI_I", addi_i);
  _gst_vm_proxy->defineCFunc ("lightningAddI_UI", addi_ui);
  _gst_vm_proxy->defineCFunc ("lightningAddI_UL", addi_ul);
  _gst_vm_proxy->defineCFunc ("lightningAddR_I", addr_i);
  _gst_vm_proxy->defineCFunc ("lightningAddR_UI", addr_ui);
  _gst_vm_proxy->defineCFunc ("lightningAddCR_I", addcr_i);
  _gst_vm_proxy->defineCFunc ("lightningAddCI_I", addci_i);
  _gst_vm_proxy->defineCFunc ("lightningAddXI_I", addxi_i);
  _gst_vm_proxy->defineCFunc ("lightningAddXR_I", addxr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubI_UI", subi_ui);
  _gst_vm_proxy->defineCFunc ("lightningSubI_UL", subi_ul);

	_gst_vm_proxy->defineCFunc ("lightningAndI_UL", andi_ul);
  _gst_vm_proxy->defineCFunc ("lightningAndI_I", andi_i);
  _gst_vm_proxy->defineCFunc ("lightningAndR_I", andr_i);
  _gst_vm_proxy->defineCFunc ("lightningOrR_I", orr_i);
  _gst_vm_proxy->defineCFunc ("lightningOrI_I", ori_i);
  _gst_vm_proxy->defineCFunc ("lightningXorR_I", xorr_i);
  _gst_vm_proxy->defineCFunc ("lightningXorI_I", xori_i);
  _gst_vm_proxy->defineCFunc ("lightningLshI_I", lshi_i);
  _gst_vm_proxy->defineCFunc ("lightningLshI_UI", lshi_ui);
  _gst_vm_proxy->defineCFunc ("lightningLshR_I", lshr_i);
  _gst_vm_proxy->defineCFunc ("lightningRshI_I", rshi_i);
  _gst_vm_proxy->defineCFunc ("lightningRshR_I", rshr_i);
  _gst_vm_proxy->defineCFunc ("lightningRshI_UI", rshi_ui);
  _gst_vm_proxy->defineCFunc ("lightningRshR_UI", rshr_ui);

  _gst_vm_proxy->defineCFunc ("lightningNegR_I", negr_i);
  _gst_vm_proxy->defineCFunc ("lightningNotR_I", notr_i);

  _gst_vm_proxy->defineCFunc ("lightningBltI_I", blti_i);
  _gst_vm_proxy->defineCFunc ("lightningBltI_UI", blti_ui);
  _gst_vm_proxy->defineCFunc ("lightningBneI_UI", bnei_ui);
  _gst_vm_proxy->defineCFunc ("lightningBeqR_UL", beqr_ul);
  _gst_vm_proxy->defineCFunc ("lightningBeqI_UL", beqi_ul);
  _gst_vm_proxy->defineCFunc ("lightningJmpi", jmpi);

  _gst_vm_proxy->defineCFunc ("lightningForward", forward);
  _gst_vm_proxy->defineCFunc ("lightningGetLabel", get_label);
  _gst_vm_proxy->defineCFunc ("lightningPatch", patch);
  _gst_vm_proxy->defineCFunc ("lightningPatchMovI",patch_movi);

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

  _gst_vm_proxy->defineCFunc ("lightningSubR_I", subr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubR_UI", subr_ui);
  _gst_vm_proxy->defineCFunc ("lightningSubCR_I", subcr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubXR_I", subxr_i);
  _gst_vm_proxy->defineCFunc ("lightningSubXI_I", subxi_i);
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
  _gst_vm_proxy->defineCFunc ("lightningRetval_I", retval_i);

  _gst_vm_proxy->defineCFunc ("lightningMovR_I", movr_i);
  _gst_vm_proxy->defineCFunc ("lightningMovR_UI", movr_ui);
	  _gst_vm_proxy->defineCFunc ("lightningMovR_UL", movr_ul);
  _gst_vm_proxy->defineCFunc ("lightningMovI_I", movi_i);
  _gst_vm_proxy->defineCFunc ("lightningMovI_UI", movi_ui);
  _gst_vm_proxy->defineCFunc ("lightningMovI_UL", movi_ul);
  _gst_vm_proxy->defineCFunc ("lightningMovI_P", movi_p);

  _gst_vm_proxy->defineCFunc ("lightningNtoH_UI", ntoh_ui);
  _gst_vm_proxy->defineCFunc ("lightningNtoH_US", ntoh_us);

  _gst_vm_proxy->defineCFunc ("lightningStR_C", str_c);
  _gst_vm_proxy->defineCFunc ("lightningStR_S", str_s);
  _gst_vm_proxy->defineCFunc ("lightningStR_I", str_i);
  _gst_vm_proxy->defineCFunc ("lightningStR_L", str_l);
  _gst_vm_proxy->defineCFunc ("lightningStR_UI", str_ui);
  _gst_vm_proxy->defineCFunc ("lightningStR_P", str_p);
  _gst_vm_proxy->defineCFunc ("lightningStR_F", str_f);
  _gst_vm_proxy->defineCFunc ("lightningStR_D", str_d);
  _gst_vm_proxy->defineCFunc ("lightningStI_C", sti_c);
  _gst_vm_proxy->defineCFunc ("lightningStI_S", sti_s);
  _gst_vm_proxy->defineCFunc ("lightningStI_I", sti_i);
  _gst_vm_proxy->defineCFunc ("lightningStI_L", sti_l);
  _gst_vm_proxy->defineCFunc ("lightningStI_UC", sti_uc);
  _gst_vm_proxy->defineCFunc ("lightningStI_US", sti_us);
  _gst_vm_proxy->defineCFunc ("lightningStI_UI", sti_ui);
  _gst_vm_proxy->defineCFunc ("lightningStI_UL", sti_ul);
  _gst_vm_proxy->defineCFunc ("lightningStI_P", sti_p);
  _gst_vm_proxy->defineCFunc ("lightningStI_F", sti_f);
  _gst_vm_proxy->defineCFunc ("lightningStI_D", sti_d);
  _gst_vm_proxy->defineCFunc ("lightningStxR_C", stxr_c);
  _gst_vm_proxy->defineCFunc ("lightningStxR_S", stxr_s);
  _gst_vm_proxy->defineCFunc ("lightningStxR_I", stxr_i);
  _gst_vm_proxy->defineCFunc ("lightningStxR_L", stxr_l);
  _gst_vm_proxy->defineCFunc ("lightningStxR_UC", stxr_uc);
  _gst_vm_proxy->defineCFunc ("lightningStxR_US", stxr_us);
  _gst_vm_proxy->defineCFunc ("lightningStxR_UI", stxr_ui);
  _gst_vm_proxy->defineCFunc ("lightningStxR_UL", stxr_ul);
  _gst_vm_proxy->defineCFunc ("lightningStxR_P", stxr_p);
  _gst_vm_proxy->defineCFunc ("lightningStxR_F", stxr_f);
  _gst_vm_proxy->defineCFunc ("lightningStxR_D", stxr_d);
  _gst_vm_proxy->defineCFunc ("lightningStxI_C", stxi_c);
  _gst_vm_proxy->defineCFunc ("lightningStxI_S", stxi_s);
  _gst_vm_proxy->defineCFunc ("lightningStxI_I", stxi_i);
  _gst_vm_proxy->defineCFunc ("lightningStxI_L", stxi_l);
  _gst_vm_proxy->defineCFunc ("lightningStxI_UC", stxi_uc);
  _gst_vm_proxy->defineCFunc ("lightningStxI_US", stxi_us);
  _gst_vm_proxy->defineCFunc ("lightningStxI_UI", stxi_ui);
  _gst_vm_proxy->defineCFunc ("lightningStxI_UL", stxi_ul);
  _gst_vm_proxy->defineCFunc ("lightningStxI_P", stxi_p);
  _gst_vm_proxy->defineCFunc ("lightningStxI_F", stxi_f);
  _gst_vm_proxy->defineCFunc ("lightningStxI_D", stxi_d);

  _gst_vm_proxy->defineCFunc ("lightningLdI_C", ldi_c);
  _gst_vm_proxy->defineCFunc ("lightningLdI_S", ldi_s);
  _gst_vm_proxy->defineCFunc ("lightningLdI_I", ldi_i);
  _gst_vm_proxy->defineCFunc ("lightningLdI_L", ldi_l);
  _gst_vm_proxy->defineCFunc ("lightningLdI_UC", ldi_uc);
  _gst_vm_proxy->defineCFunc ("lightningLdI_US", ldi_us);
  _gst_vm_proxy->defineCFunc ("lightningLdI_UI", ldi_ui);
  _gst_vm_proxy->defineCFunc ("lightningLdI_UL", ldi_ul);
  _gst_vm_proxy->defineCFunc ("lightningLdI_P", ldi_p);
  _gst_vm_proxy->defineCFunc ("lightningLdI_F", ldi_f);
  _gst_vm_proxy->defineCFunc ("lightningLdI_D", ldi_d);
  _gst_vm_proxy->defineCFunc ("lightningLdR_C", ldr_c);
  _gst_vm_proxy->defineCFunc ("lightningLdR_S", ldr_s);
  _gst_vm_proxy->defineCFunc ("lightningLdR_I", ldr_i);
  _gst_vm_proxy->defineCFunc ("lightningLdR_L", ldr_l);
  _gst_vm_proxy->defineCFunc ("lightningLdR_UC", ldr_uc);
  _gst_vm_proxy->defineCFunc ("lightningLdR_US", ldr_us);
  _gst_vm_proxy->defineCFunc ("lightningLdR_UI", ldr_ui);
  _gst_vm_proxy->defineCFunc ("lightningLdR_UL", ldr_ul);
  _gst_vm_proxy->defineCFunc ("lightningLdR_P", ldr_p);
  _gst_vm_proxy->defineCFunc ("lightningLdR_F", ldr_f);
  _gst_vm_proxy->defineCFunc ("lightningLdR_D", ldr_d);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_C", ldxi_c);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_S", ldxi_s);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_I", ldxi_i);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_L", ldxi_l);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_UC", ldxi_uc);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_US", ldxi_us);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_UI", ldxi_ui);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_UL", ldxi_ul);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_P", ldxi_p);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_F", ldxi_f);
  _gst_vm_proxy->defineCFunc ("lightningLdxI_D", ldxi_d);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_C", ldxr_c);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_S", ldxr_s);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_I", ldxr_i);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_L", ldxr_l);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_UC", ldxr_uc);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_US", ldxr_us);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_UI", ldxr_ui);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_UL", ldxr_ul);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_P", ldxi_p);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_F", ldxi_f);
  _gst_vm_proxy->defineCFunc ("lightningLdxR_D", ldxi_d);
}

/* Local Variables: */
/* mode:c           */
/* c-basic-offset:2 */
/* tab-width:2      */
/* End:             */
