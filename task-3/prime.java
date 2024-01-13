import java.util.*;

public class Prime {
	int isPrime(int n) {
		if(n<=1) {
			return 0;
		}
		for(int i=2; i<n;i++) {
			if(i%n == 0) {
				return 0;
			}
		}
	return 1;
}

public void main() {
	int n;
	System.out.println("Enter n");
	n = in.nextInt();
	
	if(isPrime(n)) {
		System.out.println(n + "is a Prime no");
	}
	else
	System.out.println(n + " is Not a Prime no");
}
}
