CXX = g++
CXXFLAGS = -std=c++17 -Wall `pkg-config --cflags opencv4`
LIBS = `pkg-config --libs opencv4`
TARGET = MyOpenCVProject
SRC = Main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LIBS)

clean:
	rm -f $(TARGET)
