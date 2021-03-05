#include "fibc.h"

VALUE rb_mFibc;

void
Init_fibc(void)
{
  rb_mFibc = rb_define_module("Fibc");
}
