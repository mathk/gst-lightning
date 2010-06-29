#include <lightning.h>
#include <stdlib.h>
#include <gstpub.h>

static VMProxy *_gst_vm_proxy;

void
addi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_addi_i (i, j, k);
#undef _jit
}

void
addr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_addr_i (i, j, k);
#undef _jit
}

void
addci_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_addci_i (i, j, k);
#undef _jit
}

void
addcr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_addcr_i (i, j, k);
#undef _jit
}

void
addxi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_addxi_i (i, j, k);
#undef _jit
}

void
addxr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_addxr_i (i, j, k);
#undef _jit
}

void
andi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_andi_i (i, j, k);
#undef _jit
}

void
andr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_andr_i (i, j, k);
#undef _jit
}

void
orri_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_orr_i (i, j, k);
#undef _jit
}

void
subr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_subr_i (i, j, k);
#undef _jit
}

void
subcr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_subcr_i (i, j, k);
#undef _jit
}

void
subxr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_subxr_i (i, j, k);
#undef _jit
}

void
subxi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_subxi_i (i, j, k);
#undef _jit
}

void
xorr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_xorr_i (i, j, k);
#undef _jit
}

void
ori_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ori_i (i, j, k);
#undef _jit
}

void
xori_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_xori_i (i, j, k);
#undef _jit
}

void
muli_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_muli_i (i, j, k);
#undef _jit
}

void
mulr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_mulr_i (i, j, k);
#undef _jit
}

void
muli_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_muli_ui (i, j, k);
#undef _jit
}

void
mulr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_mulr_ui (i, j, k);
#undef _jit
}

void
hmuli_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_hmuli_i (i, j, k);
#undef _jit
}

void
hmulr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_hmulr_i (i, j, k);
#undef _jit
}

void
hmuli_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_hmuli_ui (i, j, k);
#undef _jit
}

void
hmulr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_hmulr_ui (i, j, k);
#undef _jit
}

void
divi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_divi_i (i, j, k);
#undef _jit
}

void
divi_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_divi_ui (i, j, k);
#undef _jit
}

void
modi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_modi_i (i, j, k);
#undef _jit
}

void
modi_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_modi_ui (i, j, k);
#undef _jit
}

void
divr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_divr_i (i, j, k);
#undef _jit
}

void
divr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_divr_ui (i, j, k);
#undef _jit
}

void
modr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_modr_i (i, j, k);
#undef _jit
}

void
modr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_modr_ui (i, j, k);
#undef _jit
}

/*void
shift (jit_state *jit, char i, char j, char k, l)
{ #define _jit (*jit)
	jit_shift (i, j, k, l);
#undef _jit 
	} 
*/

void
lshi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_lshi_i (i, j, k);
#undef _jit
}

void
rshi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_rshi_i (i, j, k);
#undef _jit
}

void
rshi_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_rshi_ui (i, j, k);
#undef _jit
}

void
lshr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_lshr_i (i, j, k);
#undef _jit
}

void
rshr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_rshr_i (i, j, k);
#undef _jit
}

void
rshr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_rshr_ui (i, j, k);
#undef _jit
}

void
retval_i (jit_state *jit, char i)
{
#define _jit (*jit)
  jit_retval_i (i);
#undef _jit
}

void
negr_i (jit_state *jit, char i, char j)
{
#define _jit (*jit)
  jit_negr_i (i, j);
#undef _jit
}

void
movr_i (jit_state *jit, char i, char j)
{
#define _jit (*jit)
  jit_movr_i (i, j);
#undef _jit
}

void
movi_i (jit_state *jit, char i, char j)
{
#define _jit (*jit)
  jit_movi_i (i, j);
#undef _jit
}

void
ntoh_ui (jit_state *jit, char i, char j)
{
#define _jit (*jit)
  jit_ntoh_ui (i, j);
#undef _jit
}

void
ntoh_us (jit_state *jit, char i, char j)
{
#define _jit (*jit)
  jit_ntoh_us (i, j);
#undef _jit
}

/* Boolean */

void
ltr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ltr_i (i, j, k);
#undef _jit
}

void
ler_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ler_i (i, j, k);
#undef _jit
}

void
gtr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_gtr_i (i, j, k);
#undef _jit
}

void
ger_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ger_i (i, j, k);
#undef _jit
}

void
eqr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_eqr_i (i, j, k);
#undef _jit
}

void
ner_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ner_i (i, j, k);
#undef _jit
}

void
ltr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ltr_ui (i, j, k);
#undef _jit
}

void
ler_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ler_ui (i, j, k);
#undef _jit
}

void
gtr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_gtr_ui (i, j, k);
#undef _jit
}

void
ger_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_ger_ui (i, j, k);
#undef _jit
}

void
lti_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_lti_i (i, j, k);
#undef _jit
}

void
lei_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_lei_i (i, j, k);
#undef _jit
}

void
gti_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_gti_i (i, j, k);
#undef _jit
}

void
gei_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_gei_i (i, j, k);
#undef _jit
}

void
eqi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_eqi_i (i, j, k);
#undef _jit
}

void
nei_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_nei_i (i, j, k);
#undef _jit
}

void
lti_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_lti_ui (i, j, k);
#undef _jit
}

void
lei_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_lei_ui (i, j, k);
#undef _jit
}

void
gti_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_gti_ui (i, j, k);
#undef _jit
}

void
gei_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_gei_ui (i, j, k);
#undef _jit
}

/* Jump */
void
bltr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bltr_i (i, j, k);
#undef _jit
}

void
bler_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bler_i (i, j, k);
#undef _jit
}

void
bgtr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bgtr_i (i, j, k);
#undef _jit
}

void
bger_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bger_i (i, j, k);
#undef _jit
}

void
beqr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_beqr_i (i, j, k);
#undef _jit
}

void
bner_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bner_i (i, j, k);
#undef _jit
}

void
bltr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bltr_ui (i, j, k);
#undef _jit
}

void
bler_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bler_ui (i, j, k);
#undef _jit
}

void
bgtr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bgtr_ui (i, j, k);
#undef _jit
}

void
bger_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bger_ui (i, j, k);
#undef _jit
}

void
bmsr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bmsr_i (i, j, k);
#undef _jit
}

void
bmcr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bmcr_i (i, j, k);
#undef _jit
}

void
boaddr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_boaddr_i (i, j, k);
#undef _jit
}

void
bosubr_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bosubr_i (i, j, k);
#undef _jit
}

void
boaddr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_boaddr_ui (i, j, k);
#undef _jit
}

void
bosubr_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bosubr_ui (i, j, k);
#undef _jit
}

void
blti_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_blti_i (i, j, k);
#undef _jit
}

void
blei_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_blei_i (i, j, k);
#undef _jit
}

void
bgti_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bgti_i (i, j, k);
#undef _jit
}

void
bgei_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bgei_i (i, j, k);
#undef _jit
}

void
beqi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_beqi_i (i, j, k);
#undef _jit
}

void
bnei_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bnei_i (i, j, k);
#undef _jit
}

void
blti_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_blti_ui (i, j, k);
#undef _jit
}

void
blei_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_blei_ui (i, j, k);
#undef _jit
}

void
bgti_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bgti_ui (i, j, k);
#undef _jit
}

void
bgei_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bgei_ui (i, j, k);
#undef _jit
}

void
boaddi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_boaddi_i (i, j, k);
#undef _jit
}

void
bosubi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bosubi_i (i, j, k);
#undef _jit
}

void
boaddi_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_boaddi_ui (i, j, k);
#undef _jit
}

void
bosubi_ui (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bosubi_ui (i, j, k);
#undef _jit
}


void
bmsi_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bmsi_i (i, j, k);
#undef _jit
}

void
bmci_i (jit_state *jit, char i, char j, char k)
{
#define _jit (*jit)
  jit_bmci_i (i, j, k);
#undef _jit
}

void
jmpi (jit_state *jit, char i)
{
#define _jit (*jit)
  jit_jmpi (i);
#undef _jit
}

void
jmpr (jit_state *jit, char i)
{
#define _jit (*jit)
  jit_jmpr (i);
#undef _jit
}

/* Common */
jit_insn *
get_label (jit_state *jit)
{
#define _jit (*jit)
  return jit_get_label ();
#undef _jit
}

jit_insn *
forward (jit_state *jit)
{
#define _jit (*jit)
  return jit_forward ();
#undef _jit
}

jit_code
get_ip (jit_state *jit)
{
#define _jit (*jit)
  return jit_get_ip ();
#undef _jit
}

void
set_ip (jit_state *jit, jit_insn * ip)
{
#define _jit (*jit)
  jit_set_ip (ip);
#undef _jit
}

/* Create a new jit_state used by gst
 * It also allocate the code buffer of a insnSize bytes
 */
jit_state*
lightning_alloc_jit_state (size_t insnSize)
{
	jit_state* new_jit_state;
	jit_insn* new_pc;
	new_pc = malloc (insnSize);
	new_jit_state = malloc (sizeof (jit_state));
	new_jit_state->x.pc = new_pc;
	return new_jit_state;
}

void
gst_initModule (VMProxy* proxy)
{
	_gst_vm_proxy = proxy;
	_gst_vm_proxy->defineCFunc ("lightningAllocJitState", lightning_alloc_jit_state);
}
