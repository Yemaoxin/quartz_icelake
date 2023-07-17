#include <sys/time.h>

#include <iostream>
#include <string>
#include <vector>

int main(int argc, char** argv) {
  int size = 20000;
  std::vector<std::vector<uint64_t>> data(size, std::vector<uint64_t>(size));

  struct timeval b;
  gettimeofday(&b, nullptr);
//   # 按列遍历，避免 CPU cache 的影响
  for (int col = 0; col < size; ++col) {
    for (int row = 0; row < size; ++row) {
      data[row][col] = rand();
    }
  }

  struct timeval e;
  gettimeofday(&e, nullptr);

  std::cout << "Use time "
            << e.tv_sec * 1000000 + e.tv_usec - b.tv_sec * 1000000 - b.tv_usec
            << "us" << std::endl;
}