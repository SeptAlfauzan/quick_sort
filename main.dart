main(List<String> args) {
  print('hallo dunia');
  List<int> array_unsorted = [-2, 3, -1, 5, 4, -3, 0];

  // int index_pivot = partition(array_unsorted, 0, array_unsorted.length - 1);
  // print(index_pivot);
  print(array_unsorted);
  // print('-------');
  // quick_sort(array_unsorted, 0, 6);
  // print_array(array_unsorted);
  final sorted = quick_sort(array_unsorted, 0, 6);
  print(sorted);
  print(array_unsorted);
}

List<int> quick_sort(List<int> arr, int left, int right) {
  if (left >= right) {
    return null;
  }
  int p = partition(arr, left, right);
  quick_sort(arr, left, p - 1); //sort left part
  quick_sort(arr, p + 1, right); //sort right part
  return arr;
}

int partition(List<int> arr, int left, int right) {
  int pivot = arr[right];
  int i = (left - 1);
  for (int j = left; j < right; j++) {
    if (arr[j] < pivot) {
      i++;
      //swap array i and j
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  //swap pivot with array i + 1
  int temp = arr[i + 1];
  arr[i + 1] = arr[right];
  arr[right] = temp;

  // int index_of_pivot = arr.indexOf(pivot);
  return i + 1;
}
