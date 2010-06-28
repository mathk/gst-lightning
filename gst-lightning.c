#include "lightning.h"

void addi_i (char i, char j, char k)
{
  jit_addi_i (i, j, k);
}

void addr_i (char i, char j, char k)
{
  jit_addr_i (i, j, k);
}

void addci_i (char i, char j, char k)
{
  jit_addci_i (i, j, k);
}

void addcr_i (char i, char j, char k)
{
  jit_addcr_i (i, j, k);
}

void addxi_i (char i, char j, char k)
{
  jit_addxi_i (i, j, k);
}

void addxr_i (char i, char j, char k)
{
  jit_addxr_i (i, j, k);
}

void andi_i (char i, char j, char k)
{
  jit_andi_i (i, j, k);
}

void andr_i (char i, char j, char k)
{
  jit_andxr_i (i, j, k);
}

void orri_i (char i, char j, char k)
{
  jit_orr_i (i, j, k);
}

void subr_i (char i, char j, char k)
{
  jit_subr_i (i, j, k);
}

void subcr_i (char i, char j, char k)
{
  jit_subcr_i (i, j, k);
}

void subxr_i (char i, char j, char k)
{
  jit_subxr_i (i, j, k);
}

void subxi_i (char i, char j, char k)
{
  jit_subxi_i (i, j, k);
}

void xorr_i (char i, char j, char k)
{
  jit_xorr_i (i, j, k);
}
