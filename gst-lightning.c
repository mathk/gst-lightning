#include <lightning.h>

void
addi_i (char i, char j, char k)
{
  jit_addi_i (i, j, k);
}

void
addr_i (char i, char j, char k)
{
  jit_addr_i (i, j, k);
}

void
addci_i (char i, char j, char k)
{
  jit_addci_i (i, j, k);
}

void
addcr_i (char i, char j, char k)
{
  jit_addcr_i (i, j, k);
}

void
addxi_i (char i, char j, char k)
{
  jit_addxi_i (i, j, k);
}

void
addxr_i (char i, char j, char k)
{
  jit_addxr_i (i, j, k);
}

void
andi_i (char i, char j, char k)
{
  jit_andi_i (i, j, k);
}

void
andr_i (char i, char j, char k)
{
  jit_andr_i (i, j, k);
}

void
orri_i (char i, char j, char k)
{
  jit_orr_i (i, j, k);
}

void
subr_i (char i, char j, char k)
{
  jit_subr_i (i, j, k);
}

void
subcr_i (char i, char j, char k)
{
  jit_subcr_i (i, j, k);
}

void
subxr_i (char i, char j, char k)
{
  jit_subxr_i (i, j, k);
}

void
subxi_i (char i, char j, char k)
{
  jit_subxi_i (i, j, k);
}

void
xorr_i (char i, char j, char k)
{
  jit_xorr_i (i, j, k);
}

void
ori_i (char i, char j, char k)
{
  jit_ori_i (i, j, k);
}

void
xori_i (char i, char j, char k)
{
  jit_xori_i (i, j, k);
}

void
muli_i (char i, char j, char k)
{
  jit_muli_i (i, j, k);
}

void
mulr_i (char i, char j, char k)
{
  jit_mulr_i (i, j, k);
}

void
muli_ui (char i, char j, char k)
{
  jit_muli_ui (i, j, k);
}

void
mulr_ui (char i, char j, char k)
{
  jit_mulr_ui (i, j, k);
}

void
hmuli_i (char i, char j, char k)
{
  jit_hmuli_i (i, j, k);
}

void
hmulr_i (char i, char j, char k)
{
  jit_hmulr_i (i, j, k);
}

void
hmuli_ui (char i, char j, char k)
{
  jit_hmuli_ui (i, j, k);
}

void
hmulr_ui (char i, char j, char k)
{
  jit_hmulr_ui (i, j, k);
}

void
divi_i (char i, char j, char k)
{
  jit_divi_i (i, j, k);
}

void
divi_ui (char i, char j, char k)
{
  jit_divi_ui (i, j, k);
}

void
modi_i (char i, char j, char k)
{
  jit_modi_i (i, j, k);
}

void
modi_ui (char i, char j, char k)
{
  jit_modi_ui (i, j, k);
}

void
divr_i (char i, char j, char k)
{
  jit_divr_i (i, j, k);
}

void
divr_ui (char i, char j, char k)
{
  jit_divr_ui (i, j, k);
}

void
modr_i (char i, char j, char k)
{
  jit_modr_i (i, j, k);
}

void
modr_ui (char i, char j, char k)
{
  jit_modr_ui (i, j, k);
}

/*void
shift (char i, char j, char k, l)
{
	jit_shift (i, j, k, l);
}
*/

void
lshi_i (char i, char j, char k)
{
  jit_lshi_i (i, j, k);
}

void
rshi_i (char i, char j, char k)
{
  jit_rshi_i (i, j, k);
}

void
rshi_ui (char i, char j, char k)
{
  jit_rshi_ui (i, j, k);
}

void
lshr_i (char i, char j, char k)
{
  jit_lshr_i (i, j, k);
}

void
rshr_i (char i, char j, char k)
{
  jit_rshr_i (i, j, k);
}

void
rshr_ui (char i, char j, char k)
{
  jit_rshr_ui (i, j, k);
}

void
retval_i (char i)
{
  jit_retval_i (i);
}

void
negr_i (char i, char j)
{
  jit_negr_i (i, j);
}

void
movr_i (char i, char j)
{
  jit_movr_i (i, j);
}

void
movi_i (char i, char j)
{
  jit_movi_i (i, j);
}

void
ntoh_ui (char i, char j)
{
  jit_ntoh_ui (i, j);
}

void
ntoh_us (char i, char j)
{
  jit_ntoh_us (i, j);
}

/* Boolean */

void
ltr_i (char i, char j, char k)
{
  jit_ltr_i (i, j, k);
}

void
ler_i (char i, char j, char k)
{
  jit_ler_i (i, j, k);
}

void
gtr_i (char i, char j, char k)
{
  jit_gtr_i (i, j, k);
}

void
ger_i (char i, char j, char k)
{
  jit_ger_i (i, j, k);
}

void
eqr_i (char i, char j, char k)
{
  jit_eqr_i (i, j, k);
}

void
ner_i (char i, char j, char k)
{
  jit_ner_i (i, j, k);
}

void
ltr_ui (char i, char j, char k)
{
  jit_ltr_ui (i, j, k);
}

void
ler_ui (char i, char j, char k)
{
  jit_ler_ui (i, j, k);
}

void
gtr_ui (char i, char j, char k)
{
  jit_gtr_ui (i, j, k);
}

void
ger_ui (char i, char j, char k)
{
  jit_ger_ui (i, j, k);
}

void
lti_i (char i, char j, char k)
{
  jit_lti_i (i, j, k);
}

void
lei_i (char i, char j, char k)
{
  jit_lei_i (i, j, k);
}

void
gti_i (char i, char j, char k)
{
  jit_gti_i (i, j, k);
}

void
gei_i (char i, char j, char k)
{
  jit_gei_i (i, j, k);
}

void
eqi_i (char i, char j, char k)
{
  jit_eqi_i (i, j, k);
}

void
nei_i (char i, char j, char k)
{
  jit_nei_i (i, j, k);
}

void
lti_ui (char i, char j, char k)
{
  jit_lti_ui (i, j, k);
}

void
lei_ui (char i, char j, char k)
{
  jit_lei_ui (i, j, k);
}

void
gti_ui (char i, char j, char k)
{
  jit_gti_ui (i, j, k);
}

void
gei_ui (char i, char j, char k)
{
  jit_gei_ui (i, j, k);
}

/* Jump */
void
bltr_i (char i, char j, char k)
{
  jit_bltr_i (i, j, k);
}

void
bler_i (char i, char j, char k)
{
  jit_bler_i (i, j, k);
}

void
bgtr_i (char i, char j, char k)
{
  jit_bgtr_i (i, j, k);
}

void
bger_i (char i, char j, char k)
{
  jit_bger_i (i, j, k);
}

void
beqr_i (char i, char j, char k)
{
  jit_beqr_i (i, j, k);
}

void
bner_i (char i, char j, char k)
{
  jit_bner_i (i, j, k);
}

void
bltr_ui (char i, char j, char k)
{
  jit_bltr_ui (i, j, k);
}

void
bler_ui (char i, char j, char k)
{
  jit_bler_ui (i, j, k);
}

void
bgtr_ui (char i, char j, char k)
{
  jit_bgtr_ui (i, j, k);
}

void
bger_ui (char i, char j, char k)
{
  jit_bger_ui (i, j, k);
}

void
bmsr_i (char i, char j, char k)
{
  jit_bmsr_i (i, j, k);
}

void
bmcr_i (char i, char j, char k)
{
  jit_bmcr_i (i, j, k);
}

void
boaddr_i (char i, char j, char k)
{
  jit_boaddr_i (i, j, k);
}

void
bosubr_i (char i, char j, char k)
{
  jit_bosubr_i (i, j, k);
}

void
boaddr_ui (char i, char j, char k)
{
  jit_boaddr_ui (i, j, k);
}

void
bosubr_ui (char i, char j, char k)
{
  jit_bosubr_ui (i, j, k);
}

void
blti_i (char i, char j, char k)
{
  jit_blti_i (i, j, k);
}

void
blei_i (char i, char j, char k)
{
  jit_blei_i (i, j, k);
}

void
bgti_i (char i, char j, char k)
{
  jit_bgti_i (i, j, k);
}

void
bgei_i (char i, char j, char k)
{
  jit_bgei_i (i, j, k);
}

void
beqi_i (char i, char j, char k)
{
  jit_beqi_i (i, j, k);
}

void
bnei_i (char i, char j, char k)
{
  jit_bnei_i (i, j, k);
}

void
blti_ui (char i, char j, char k)
{
  jit_blti_ui (i, j, k);
}

void
blei_ui (char i, char j, char k)
{
  jit_blei_ui (i, j, k);
}

void
bgti_ui (char i, char j, char k)
{
  jit_bgti_ui (i, j, k);
}

void
bgei_ui (char i, char j, char k)
{
  jit_bgei_ui (i, j, k);
}

void
boaddi_i (char i, char j, char k)
{
  jit_boaddi_i (i, j, k);
}

void
bosubi_i (char i, char j, char k)
{
  jit_bosubi_i (i, j, k);
}

void
boaddi_ui (char i, char j, char k)
{
  jit_boaddi_ui (i, j, k);
}

void
bosubi_ui (char i, char j, char k)
{
  jit_bosubi_ui (i, j, k);
}


void
bmsi_i (char i, char j, char k)
{
  jit_bmsi_i (i, j, k);
}

void
bmci_i (char i, char j, char k)
{
  jit_bmci_i (i, j, k);
}

void
jmpi (char i)
{
  jit_jmpi (i);
}

void
jmpr (char i)
{
  jit_jmpr (i);
}

/* Common */
jit_insn*
get_label()
{
	return jit_get_label ();
}

jit_insn*
forward()
{
	return jit_forward ();
}

jit_code
get_ip()
{
	return jit_get_ip ();
}

void
set_ip(jit_insn* ip)
{
	jit_set_ip (ip);
}


