#include "../src/Detector.hpp"
#include <cassert>

void testEmptyMatrixHandling() {
    ObjectDetector detector;
    cv::Mat emptyInput;
    cv::Mat output;
    assert(detector.processFrame(emptyInput, output) == false && "Test Failed: Empty matrices must return false.");
}

void testValidDetectionWorkflow() {
    ObjectDetector detector;
    cv::Mat validInput = cv::Mat::zeros(200, 200, CV_8UC3);
    cv::circle(validInput, cv::Point(100, 100), 20, cv::Scalar(255, 255, 255), -1);
    cv::Mat output;
    assert(detector.processFrame(validInput, output) == true && "Test Failed: Valid matrices must return true.");
}

int main() {
    std::cout << "Running Native C++ Automated Unit Tests..." << std::endl;
    testEmptyMatrixHandling();
    testValidDetectionWorkflow();
    std::cout << "All C++ Unit Tests Passed Successfully!" << std::endl;
    return 0;
}
