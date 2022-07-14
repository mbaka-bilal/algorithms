void main() {
  int index = 0;
  List<List<int>> values = [[1], [0, 4, 5], [3, 4, 5], [2, 6], [1, 2], [1, 2, 6], [3, 5], []];
  List<BFSInfo> result = doBFS(values,3);
  result.forEach((element) {
    print ("bfsInfo[$index]: {distance: ${element.distance},predecessor ${element.predecessor}}");
    index++;
  });
  result = doBFS(values,4);
  print ("-------------------");
  result.forEach((element) {
    print ("bfsInfo[$index]: {distance: ${element.distance},predecessor ${element.predecessor}}");
    index++;
  });
}

class BFSInfo {
  int distance;
  int predecessor;

  BFSInfo()
      : distance = -1,
        predecessor = -1;

  BFSInfo.addInfo(
    this.distance,
    this.predecessor,
  );
}

List<BFSInfo> doBFS(List<List<int>> graph, int source) {
  List<BFSInfo> bfsInfo = [];

  for (int i=0;i<graph.length;i++){
    bfsInfo.add(BFSInfo.addInfo(-1, -1));
  }

  // print ('the bsfinfo ${source}');

  bfsInfo[source].distance = 0;
  bfsInfo[source].predecessor = -1;

  // bfsInfo.forEach((element) {
  //   print("the element is ${element.distance}");
  //   print('the sdfsdf is ${element.predecessor}');
  // });

  List<int> q = [];
  q.add(source);

  int index = 0;
  bool increment = true;

  while (q.length > 0) {
    for (int v = 0; v < graph[q.first].length; v++) {
      // print ("the index is ${bfsInfo[7].predecessor}");
      // print ('the value is ${bfsInfo[(graph[q.first])[v]].distance}');
      if (bfsInfo[(graph[q.first])[v]].distance == -1) {
        // print ('the index');
        if (increment) {
          index++;
          increment = false;
        }
        // update the index of bfsInfo list to the correct values
        bfsInfo[(graph[q.first])[v]].distance = index;
        bfsInfo[(graph[q.first])[v]].predecessor = q.first;

        //populate the list q with the new graph values
        q.add(graph[q.first][v]);
      }
    }
    q.removeAt(0);
    increment = true;
  }

  return bfsInfo;
}

