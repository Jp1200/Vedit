CXX = clang++
CXXFLAGS = -std=c++17 -I include
SRC = $(wildcard src/*.cpp)
TARGET = VEdit

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $^ -o $@

clean:
	rm -f $(TARGET)
