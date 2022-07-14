void main() {
  print ("the factorial of 5 is ${factorial(5)}");

}

int factorial(int n) {
  int result = 1;


  for (int i=1;i<=n;i++){
    result = result * i;
  }

  return result;
}
