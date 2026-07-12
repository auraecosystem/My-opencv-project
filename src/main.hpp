// src/Main.cpp
#include "Detector.hpp"

int main() {
    std::cout << "Project: My OpenCV v1.0.0 [C++ Core Enforcing]" << std::endl;
    std::cout << "OpenCV Library Runtime Version: " << CV_VERSION << std::endl;

    ObjectDetector detector;
    // Build a mock canvas representing sample image matrix inputs
    cv::Mat mockFrame = cv::Mat::zeros(400, 400, CV_8UC3);
    cv::circle(mockFrame, cv::Point(200, 200), 50, cv::Scalar(0, 0, 255), -1); // Solid object
    
    cv::Mat resultFrame;
    if (detector.processFrame(mockFrame, resultFrame)) {
        std::cout << "Pipeline tracking execution cycle: SUCCESS" << std::endl;
    } else {
        std::cerr << "Pipeline tracking execution cycle: FAILED" << std::endl;
        return -1;
    }
    return 0;
}
