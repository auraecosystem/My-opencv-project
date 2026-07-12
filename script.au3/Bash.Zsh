rm -rf build
mkdir build
cd build
gcloud services enable aiplatform.googleapis.com
cmake ..
cmake --build . --config Release
./MyOpenCVProject
