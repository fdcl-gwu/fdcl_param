#include <iostream>
#include <string>
#include "Eigen/Dense"
#include "fdcl_param.h"

using namespace std;

int main(void)
{
	double m;
	string dev;
	int addr;
	Eigen::Matrix<double, 3, 3> J;
	
	fdcl_param pfile;
	
	pfile.open("config.txt");

	pfile.read("UAV.m",m);
	cout << "m=" << m << endl;
	pfile.read("UAV.J",J);
	cout << "J=" << J << endl;
	pfile.read("IMU.dev",dev);
	cout << "dev=" << dev << endl;

	pfile.save("I2C.addr",50);
	pfile.read("I2C.addr",addr);
	cout << "addr=" << addr << endl;
	pfile.close();
}


