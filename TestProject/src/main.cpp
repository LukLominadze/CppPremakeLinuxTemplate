#include <iostream>
#include <vector>
#include "TestClass.h"

int main(int argc, char* argv[]) {
    std::cout << "Hello world!" << std::endl;

    std::vector<int> myNums;
    myNums.reserve(10);
    for (int i = 0; i < 10; i++) {
        myNums.emplace_back(i);
        std::cout << myNums[i] << std::endl;
    }

    BaseProject::TestClass testObj = BaseProject::TestClass(5);
}