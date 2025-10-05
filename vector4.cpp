#include <iostream>
#include <vector>

using namespace std; 

int main(){
	vector<int> xs(7);
	int x=0;

	cout << "First integer: ";
	cin >> x;
	xs[0] = x;

	for(int i=1; i<7; i++){
		x++;
		xs[i] = x;
	}
	
	cout << "{";
	for(int i=0; i<7; i++){
		cout << xs.at(i) << ", ";
	}
	cout << "}";

	cout << endl;
	return 0;
}
