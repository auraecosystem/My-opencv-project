
#include <opencv2/opencv.hpp>
#include <iostream>

int main(int argc, char** argv) {
    // 1. Print and verify the current system OpenCV Version
    std::cout << "=====================================" << std::endl;
    std::cout << "OpenCV Version Check: " << CV_VERSION << std::endl;
    std::cout << "=====================================" << std::endl;

    // 2. Mock image generation (Creates a basic 400x400 blue square)
    // Replace "cv::Mat(400, 400, CV_8UC3, cv::Scalar(255, 0, 0))" 
    // with "cv::imread("path/to/image.jpg")" to load an external file.
    cv::Mat image = cv::Mat(400, 400, CV_8UC3, cv::Scalar(255, 0, 0));

    if (image.empty()) {
        std::cerr << "Error: Matrix could not be initialized or image missing!" << std::endl;
        return -1;
    }

    // 3. Render window layout
    cv::namedWindow("OpenCV Project Test Frame", cv::WINDOW_AUTOCREELY);
    cv::imshow("OpenCV Project Test Frame", image);

    std::cout << "Press any key inside the image window to close... " << std::endl;
    cv::waitKey(0); 
    
    return 0;
}
