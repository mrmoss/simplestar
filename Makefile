SRC=src
INC=include
CXX=g++
CFLAGS=-O -std=c++11 -Wall -Wno-unused-result -I$(INC)
LIB=

ifeq ($(OS),Windows_NT)
	LIB+=-lWs2_32
endif

all: lonestar

lonestar: $(SRC)/main.cpp $(INC)/mongoose/mongoose.c $(INC)/jsoncpp/json_reader.cpp $(INC)/jsoncpp/json_tool.h $(INC)/jsoncpp/json_value.cpp $(INC)/jsoncpp/json_writer.cpp
	$(CXX) $(CFLAGS) $(LIB) $^ -o $@

clean:
	-rm -rf lonestar
