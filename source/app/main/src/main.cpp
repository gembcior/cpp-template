#include <iostream>
#include <cstdint>
#include "example/Example.h"

using namespace std;
using namespace cpp::lib;


int main()
{
  cout << "Cpp Template Application" << endl;
  Example example;
  constexpr int ExampleInput = 0x1234;
  example.run(ExampleInput);

  return 0;
}
