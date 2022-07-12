void main() {
  List<int> values = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97];
  int index = doSearch(values,67);
  
  if (index > 0){
  	
  print  ("The value we are looking for is located at index $index gives === ${values[index]}");
  
  }else{
  	print ("The value is not in the array");
  	}

}

int doSearch(List<int> array,int targetValue){
  int minIndex=0;
  int maxIndex=array.length - 1;
  int guess = 0;
  bool isNotFound = true;


  while (isNotFound){
    if (array[(maxIndex + minIndex) ~/ 2] == targetValue){
      isNotFound = false;
      return (maxIndex + minIndex) ~/ 2;
    }else{
      guess = (maxIndex + minIndex) ~/ 2;
      if (array[guess] < targetValue  ){
        minIndex = guess + 1;
      }else{
        maxIndex = guess - 1;
      }
    }
  }

  return -1;
}

