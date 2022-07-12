void main() {
  List<int> list = [18, 6, 66, 44, 9, 22, 14, 5];
  for(int i =0;i<list.length;i++){
    swap(list, i, indexOfMinimum(list, i));
  }

  print ("the ordered list is $list");
}

int indexOfMinimum(List<int> array, int startIndex) {
  int minValue = array[startIndex];
  int minIndex = startIndex;

  for (int i = startIndex; i < array.length; i++) {
    if (array[i] < minValue) {
      minValue = array[i];
      minIndex = i;
    }
  }

  return minIndex;
}

void swap(List<int> array, int firstIndex, int secondIndex) {
  int temp = array[firstIndex];
  array[firstIndex] = array[secondIndex];
  array[secondIndex] = temp;
  return;
}

