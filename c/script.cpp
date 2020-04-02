#include <cstring>
#include <iostream>
#include <string>
#include <cstdlib>
#include <fstream>
using namespace std;

int main(int argc, char** argv){
	if (argc > 2) exit(1);
	char in_file[100];
	char out_file[100];
	strcpy(in_file, argv[1]);
	strcpy(out_file, strcat(argv[1], "_booped"));
	ifstream i_f(in_file);
	ofstream o_f(out_file);
	if(!i_f || !o_f) exit(2);
	string line;
	string rep_str = "beep";
	string new_str = "boop";
	size_t pos;
	cout << in_file << endl;
	while(getline(i_f, line)){
		pos = line.find(rep_str);
		while(pos!=string::npos){
			line.replace(pos, rep_str.length(), new_str);
			pos = line.find(rep_str);
		}
		line += "\n";
		o_f << line;
	}
	i_f.close();
	o_f.close();
}
