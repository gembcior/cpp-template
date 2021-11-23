#ifndef EXAMPLE_H
#define EXAMPLE_H

#include "example/IExample.h"

namespace cpp::lib {

class Example : public IExample
{
public:
  int run(int input) final;
};

}

#endif /* EXAMPLE_H */
