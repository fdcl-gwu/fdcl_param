INCLUDE_PATH= ./eigen-3.3.4
CFLAGS=$(foreach d, $(INCLUDE_PATH), -I$d) -Wall 

test_fdcl_param:  fdcl_param.h test_fdcl_param.cpp
	g++ -o test_fdcl_param test_fdcl_param.cpp  $(CFLAGS) 
