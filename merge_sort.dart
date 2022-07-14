void main() {
  print('the arranged list is ${splitList([5, 4, 3, 2, 1])}');
}

List<int> splitList(List<int> list) {
  if (list.length < 2) {
    return list;
  }

  int middle = list.length ~/ 2;

  List<int> leftArray = splitList(list.sublist(0, middle));
  List<int> rightArray = splitList(list.sublist(middle));

  return mergeSort(leftArray, rightArray);
}

List<int> mergeSort(List<int> leftArray, List<int> rightArray) {
  List<int> result = [];
  int i = 0;
  int j = 0;

  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] < rightArray[j]) {
      result.add(leftArray[i]);
      i++;
    } else if (leftArray[i] > rightArray[j]) {
      result.add(rightArray[j]);
      j++;
    } else {
      result.add(leftArray[i]);
      result.add(rightArray[j]);
      j++;
      i++;
    }
  }

  while (i < leftArray.length) {
    result.addAll(leftArray.getRange(i, leftArray.length));
    i++;
  }

  while (j < rightArray.length) {
    result.addAll(rightArray.getRange(j, rightArray.length));
    j++;
  }

  return result;
}

