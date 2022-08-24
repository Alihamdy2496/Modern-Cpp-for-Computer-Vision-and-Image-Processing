#include "image.h"

int main()
{
    std::cout << "histogram test application"<<std::endl;
    igg::Image img;
    std::vector<float> hist;
    img.FillFromPgm("../data/lena.ascii.pgm")? std::cout << "image read correctly"<<std::endl : std::cout << "image read correctly"<<std::endl ;
    hist=img.ComputeHistogram(500);
    for (auto & item:hist){
        std::cout<<item<<" ";
    }
    std::cout<<std::endl;

    return 0;
}
