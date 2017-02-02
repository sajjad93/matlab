#include<iostream>
#include<string>
using namespace std;
int fact(int);
int main(){
	int num;
	cout << "enter a num: \n";
	cin >> num;
	cout << fact(num) << endl;
}
int fact(int n){
	int i=1; 
	long double res=1;
	for(;i<=n; i++){
		res=res*i;
	}
	return res;
}