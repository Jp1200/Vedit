CXX = g++
CXXFLAGS = -std=c++17 -I include
SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
TARGET = myprogram

all: $(TARGET)

$(TARGET): $(OBJ) main.o
	$(CXX) $(CXXFLAGS) -o $@ $^

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f $(OBJ) main.o $(TARGET)
