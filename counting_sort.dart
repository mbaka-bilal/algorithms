import 'dart:math';

void main() {
  List<int> testValues = [3,4,2,5,1,7,3];
  List<int> secondTestValues = [1,3,6,0,9,12];
  print ("the sorted result is ${countingSort(testValues)}");
  print ("the sorted result is ${countingSort(secondTestValues)}");

}

List<int> countingSort(List<int> arr){
  int max_element = arr.reduce(max);
  int min_element = arr.reduce(min);
  int size = arr.length;
  List<int> auxArray = List<int>.filled(max_element + 1, 0);
  List<int> result = List<int>.filled(size+1, 0);

  for (int i=0;i<size;i++){
    auxArray[arr[i]] += 1;
  }


  for (int i=1;i<=max_element;i++){
      auxArray[i] += auxArray[i - 1 ];
  }

  int i = size - 1;

  while (i>=0) {
    result[auxArray[arr[i]]] = arr[i];
    auxArray[arr[i]] -= 1;
    i -= 1;
  }
  return result;
}


