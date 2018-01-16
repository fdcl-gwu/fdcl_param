INCLUDE_PATH= ./eigen-3.3.4
CFLAGS=$(foreach d, $(INCLUDE_PATH), -I$d) -Wall -std=c++11

test_fdcl_param:  fdcl_param.h fdcl_param.cpp test_fdcl_param.cpp
	g++ -o test_fdcl_param test_fdcl_param.cpp fdcl_param.cpp  $(CFLAGS) 
