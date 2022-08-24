#include "image.h"

igg::Image::Image() {}

igg::Image::Image(int rows, int cols) {
    //data_.reserve(rows * cols);
    data_.assign(rows * cols, 0);
}
int igg::Image::rows() const { return rows_; }

int igg::Image::cols() const { return cols_; }

const int& igg::Image::at(int row, int col) const {
    std::cout << "getter call" << std::endl;
    return data_[row * cols_ + col]; // getter
}

int& igg::Image::at(int row, int col) {
    std::cout << "setter call" << std::endl;
    return data_[row * cols_ + col]; // setter
}

bool igg::Image::FillFromPgm(const std::string& file_name) {
    // Swap content
    // Exchanges the content of the container by the content of x, which is another vector object of the same type. Sizes may differ.
    igg::io_tools::ImageData image = igg::io_tools::ReadFromPgm(file_name);
    if (image.data.empty()) {
        return false;
    }
    else {
        rows_ = image.rows;
        cols_ = image.cols;
        max_val_ = image.max_val;
        data_.swap(image.data);
        return true;
    }
}

void igg::Image::WriteToPgm(const std::string& file_name) {
    igg::io_tools::ImageData img{ rows_ , cols_ , max_val_ , data_ };
    igg::io_tools::WriteToPgm(img, file_name);
}

std::vector<float> igg::Image::ComputeHistogram(int bins) const {
    std::vector<float> hist(bins, 0);
    for (const int& pixel : data_) {
        hist[static_cast<int>(std::ceil((pixel / 255.0f) * bins)) - 1]++;
    }
    //  let bins >> 4
    //  |-------|------------|---------------|-------------|   
    //  0    63.75        127.5           191.25         255  << pixel >>
    //  |-------|------------|---------------|-------------|   
    //  0     0.25         0.5             0.75           1.0  << (pixel / 255.0f) >>
    //  |-------|------------|---------------|-------------|   
    //  0     1.0          2.0             3.0           4.0  << (pixel / 255.0f) * bins >>
    //  | -> |  ->  |  ->  |  ->  |   
    //     1.0    2.0     3.0   4.0  << std::ceil((pixel / 255.0f) * bins)) >>
    //  | -> |  ->  |  ->  |  ->  |  
    //      1      2      3      4  << static_cast<int>(std::ceil((pixel / 255.0f) * bins))) >>
    //  | -> |  ->  |  ->  |  ->  |  
    //      0      1      2      3  << static_cast<int>(std::ceil((pixel / 255.0f) * bins))) - 1  >>
    // which is the histogram bins
    return hist;
}

void igg::Image::print_hello() {
    std::cout << "hello !!" << std::endl;
}

void igg::Image::DownScale(int scale) {
    std::vector<int> data_tmp;
    data_tmp.assign((rows_ / scale) * (cols_ / scale), 0);

    for (int row_indx = 0; row_indx < (rows_ / scale); ++row_indx) {
        for (int col_indx = 0; col_indx < (cols_ / scale); ++col_indx) {
            data_tmp[col_indx + row_indx * (cols_ / scale)] = data_[col_indx * scale + row_indx * scale * cols_];
        }
    }
    rows_ /= scale;
    cols_ /= scale;
    data_.swap(data_tmp);
}

void igg::Image::UpScale(int scale) {
    std::vector<int> data_tmp;
    data_tmp.assign((rows_ * scale) * (cols_ * scale), 0);

    for (int row_indx = 0; row_indx < (rows_ * scale); ++row_indx) {
        for (int col_indx = 0; col_indx < (cols_ * scale); ++col_indx) {
            data_tmp[col_indx * scale + row_indx * scale * cols_] = data_[col_indx + row_indx * (cols_ / scale)];
        }
    }
    rows_ *= scale;
    cols_ *= scale;
    data_.swap(data_tmp);
}