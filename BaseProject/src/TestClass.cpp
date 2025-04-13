#include "TestClass.h"
#include <iostream>

namespace BaseProject{
    TestClass::TestClass(int a)
    : m_a(a)
    {
        std::cout << "Created! <-> " << m_a << std::endl;
    }

    TestClass::~TestClass() {
        std::cout << "Destroyed! <-> " << m_a << std::endl; 
    }
}