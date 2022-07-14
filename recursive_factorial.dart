void main() {
  print ("the factorial of 5 is ${factorial(5)}");

}

int factorial(int n) {
  int sol  = 1;
  print ("n is $n");
  if (n > 0) {
    sol = n * factorial(n-1);
  }
  return sol;
}
