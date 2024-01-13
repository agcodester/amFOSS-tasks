#include<iostream>
using namespace std;

int main() {	
int n , c=0;
cout << "Enter a Number" << endl;
cin >> n ;
for(int i=2; i<=n;i++) {
if(i%n == 0) {
	c++;
}
}
if(c) {
cout << "Prime Number" <<endl;
}
else {
cout << "Not a Prime Number" << endl;
}
}
