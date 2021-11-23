#include "gtest/gtest.h"
#include "example/Example.h"


using namespace ::testing;
using namespace cpp::lib;


class ExampleTest : public Test, public testing::WithParamInterface<int>
{
protected:
  Example m_example;
};


INSTANTIATE_TEST_SUITE_P(ExampleInput, ExampleTest, Range(0, 10));


TEST_P(ExampleTest, exampleInput)
{
  auto input = GetParam();
  m_example.run(input);
}
