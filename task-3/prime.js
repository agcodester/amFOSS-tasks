const prompts = require('prompts');

function isPrime(n) {
	if(n<=1) 
	return false;

	for(let i=2; i<n;i++) {
		if(n%i==0) {
			return false;
		}
	}
	return true;
}

function main() {
	let n = parseInt(process.argv[2]);

	if(isPrime(n)) 
	console.log(`${n} is a prime number`);

	else
	console.log(`${n} is not a prime number`);
}
main();
