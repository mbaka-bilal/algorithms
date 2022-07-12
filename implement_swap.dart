void main() {
  List<int> list = [1, 2, 3, 4];
  var newList = swap(list,0,1);
  print  ("The new list is $newList");

}

 List<int> swap (List<int> array,int firstIndex,int secondIndex){
  int temp;

  temp = array[firstIndex];
  array[firstIndex] = array[secondIndex];
  array[secondIndex] = temp;
  return array;
}
