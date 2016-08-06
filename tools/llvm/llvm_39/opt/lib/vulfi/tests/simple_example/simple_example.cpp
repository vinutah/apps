#include <iostream>

long seed = 123456789;
long m = 4294967296;
long a = 1103515245;
long c = 12345;

long
rand()
{
  seed = (a * seed + c) % m;
  return seed;
}

int
main()
{
  for (int i=0; i<10; i++) {
    std::cout << rand() << std::endl;
  }

  return 0;
}
