#include "fibc.h"

VALUE rb_mFibc;

long fibc(long n) {
  if (n == 0 || n == 1)
    return n;

  return fibc(n-1) + fibc(n-2);
}

VALUE rb_fibc(VALUE self, VALUE r_num) {
  Check_Type(r_num, T_FIXNUM);

  long num = FIX2LONG(r_num);

  long res = fibc(num);

  return LONG2FIX(res);
}

void Init_fibc(void)
{
  rb_mFibc = rb_define_module("Fibc");

  rb_define_singleton_method(rb_mFibc, "fib", rb_fibc, 1);
}
