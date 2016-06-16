# A simple makefile for compiling the programs.

CC=g++
CXXFLAGS=-std=c++11 -g
LDFLAGS=-g

all: compress uncompress

compress: BitInputStream.o BitOutputStream.o HCNode.o HCTree.o
# compress: HCNode.o HCTree.o

uncompress: BitInputStream.o BitOutputStream.o HCNode.o HCTree.o
# uncompress: HCNode.o HCTree.o

HCTree.o: BitInputStream.hpp BitOutputStream.hpp HCNode.hpp HCTree.hpp
# HCTree.o: HCNode.hpp HCTree.hpp

HCNode.o: HCNode.hpp

BitOutputStream.o: BitOutputStream.hpp

BitInputStream.o: BitInputStream.hpp

clean:
	rm -f compress uncompress *.o core*

