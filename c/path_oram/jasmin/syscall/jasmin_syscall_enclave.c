#include "jasmin_syscall.h"
#include <openenclave/enclave.h>
#include <stdio.h>

// Note: Direct POSIX syscalls like getrandom() and sleep() are generally not
// available or are discouraged within an Open Enclave for security and isolation reasons.
// Instead, Open Enclave SDK provides its own APIs for such functionalities.
uint8_t* __jasmin_syscall_randombytes__(uint8_t* x, uint64_t xlen)
{
  oe_result_t result = OE_OK;
  
  // oe_random() is designed to fill the entire buffer securely.
  // It handles internal retries and entropy gathering within the enclave context.
  result = oe_random(x, xlen);

  // if (result != OE_OK)
  // {
  //   We should handle this error
  // }

  return x;
}
