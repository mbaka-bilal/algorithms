void main() {
  List<int> list = [18, 6, 66, 44, 9, 22, 14, 5];
  var newList = indexOfMinimum(list, 2);
  print("The index of smallest number is  $newList");
}

int indexOfMinimum(List<int> array, int startIndex) {
  int minValue = array[startIndex];
  int minIndex = startIndex;

  for (int i = startIndex; i < array.length; i++) {
    if (array[i] < minValue  ) {
      
      minValue = array[i];
      minIndex = i;
    }
  }

  return minIndex;
}

