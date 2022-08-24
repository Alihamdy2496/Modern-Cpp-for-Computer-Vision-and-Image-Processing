#include "image.h"


int main()
{
    std::cout << "img resize test application"<<std::endl;
    igg::Image img;
    img.FillFromPgm("../data/lena.ascii.pgm")? std::cout << "image read correctly"<<std::endl : std::cout << "image read correctly"<<std::endl ;
    img.DownScale(3);
    img.WriteToPgm("../data/lena_downsized.ascii.pgm");
    return 0;
}