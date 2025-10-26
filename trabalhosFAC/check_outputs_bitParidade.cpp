#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(){
	int count=0;

	ifstream file1("outputs_bitParidade.txt");
	if(!file1.is_open()){
		cerr << "Erro ao abrir arquivo" << endl;
		exit(1);
	}

	string line;
	for(int i=0; i<=1026; i++){
		if(i == count){
			getline(file1, line);
			cout << line << endl;
			count += 7;
		}
	}

	cout << endl;
	return 0;
}
