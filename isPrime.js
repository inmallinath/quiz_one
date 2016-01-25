var isPrime = function(n){
  for(i=2; i<n-1; i++){
    if(n%i == 0){
      //console.log(n + " is not a prime number");
      return false;
      //break;
    }
    else {
      //console.log(n + " is a prime number");
      return true;
      //break;
    }
  }
}

isPrime(11);
isPrime(8);
