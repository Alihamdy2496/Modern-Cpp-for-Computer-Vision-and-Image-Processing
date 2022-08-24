#include "image.h"

int main()
{
    std::cout << "reading and writing test application"<<std::endl;
    igg::Image img;
    img.FillFromPgm("../data/lena.ascii.pgm")? std::cout << "image read correctly"<<std::endl : std::cout << "image read correctly"<<std::endl ;
    for(int i =0; i<img.rows();i++){
        img.at(i,i)=255;
    }
    std::cout << "rows" <<img.rows() << "cols" <<img.cols() <<std::endl;
    img.WriteToPgm("../data/lena.ascii_copy.pgm");

    return 0;
}