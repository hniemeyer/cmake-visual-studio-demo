#include <iostream>
#include "fmt/core.h"
#include "utils.hpp"

int main()
{
	fmt::print("Hello World! {}", add(5,6));
}