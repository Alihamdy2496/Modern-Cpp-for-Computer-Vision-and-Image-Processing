#include "image.h"
#include <iostream>
int main()
{
    std::cout << "getter and setter test application" << std::endl;
    igg::Image img(50, 50);
    //int val = img.at(49, 49);
    std::cout << const_cast<const igg::Image&>(img).at(49, 49) << std::endl; // should be a getter
    img.at(49, 49) = 50; // should be a setter
    //val = img.at(49, 49);  
    std::cout << const_cast<const igg::Image&>(img).at(49, 49) << std::endl; // should be a getter
    return 0;
}
// i don't know how to do the example here for setters and getters 
// – int val = image.at(row, col);
// – image.at(row, col) = 255;
// based on this https://stackoverflow.com/questions/37494204/correct-signature-for-overloading-getter-and-setter-for-c-list-class
// the function is chosen based on the type of the object you're using, not based on what you do with the result of calling the function.
// so both calls here will always get either setter or setter depending on the object type
// the only way to do it is to cast the object to const when calling the getter