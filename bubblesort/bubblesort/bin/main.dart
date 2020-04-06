import 'dart:io';

void bubbleSort(List list) {
  if (list == null || list.isEmpty) return;

  int n = list.length;
  int i, step;
  for (step = 0; step < n; step++) {
    for (i = 0; i < n - step - 1; i++) {
      if (list[i] > list[i + 1]) {
        swap(list, i);
      }
    }
  }
}

void swap(List list, int i) {
  int temp = list[i];
  list[i] = list[i + 1];
  list[i + 1] = temp;
}

main(List list) {
  print('Please enter line of numbers to sort:');
  RegExp regexp = RegExp(r'(?: |, |,)');
  String input = stdin.readLineSync();
  List<int> list = input.split(regexp).map(int.parse).toList();

  print('Are you sure you want to sort these numbers:');
  print(list);
  print('If you are sure, type "yes" , if not type "no"');

  String answer = stdin.readLineSync();
  if (answer == 'yes') {
    bubbleSort(list);
    print('Here is your sorted list of numbers:');
    print(list);
  } else if (answer == 'no') {
    print('Please enter line of numbers to sort:');
    main(list);
  } else
    (null);
}
