void main() {
  var list = [4,3,2,1];
  var listSecond = [4, 3, 2, 1, 0, -1, -99];
  var listThird = [1, 2, 3, 4];
  var listFourth = [2];
  List<int> listFifth = [];

  insertionSort(list);
  insertionSort(listSecond);
  insertionSort(listThird);
  insertionSort(listFourth);
  insertionSort(listFifth);

}

void insert(List<int> list, int rightIndex, int value) {
  for (int j=rightIndex-1;j>0;j--){
    int temp = list[j-1];
    if (list[j] < list[j-1]){
      list[j-1] = list[j];
      list[j] = temp;
    }
  }
}


void insertionSort(List<int> array) {
  List<int> sortedArray = [];

  if (array.length == 1){
    print ("the sorted list is $array");
    return;
  }

  for (int i=0;i<array.length-1;i++){
    //swap the top two
    int temp = array[i+1];
    if (temp < array[i]){
      array[i+1] = array[i];
      array[i] = temp;
    }

    sortedArray.add(array[i]);
    if (i == (array.length-2)) {
     sortedArray.add(array[i+1]);
    }

    if (sortedArray.length > 1){
      for (int i=0;i<sortedArray.length;i++){
        insert(sortedArray,sortedArray.length,temp);
      }
    }

  }
  print ("the sorted list is $sortedArray");
  return;
}
