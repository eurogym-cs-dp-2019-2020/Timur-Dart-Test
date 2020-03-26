// import 'dart:async';

// void main(List<String> args) async {
//   Stream stream = numberStream(100);
//   await for (var s in stream) {}
// }



// Stream numberStream(num s) async* {
//   for (var i = 1; i <= 100; i++) {
//     fizzBuzzshit(i);
//     await Future.delayed(const Duration(milliseconds: 50));
//     yield i;
//   }
// }

// void fizzBuzzshit(num s) async {
//   await Future.delayed(const Duration(milliseconds: 50));
//   if (s % 15 == 0) {
//     print('FizzBuzz');
//   } else if (s % 5 == 0) {
//     print('Buzz');
//   } else if (s % 3 == 0) {
//     print('Fizz');
//   } else {
//     print('$s');
//   } 
// }

import 'dart:async';

void main() async {
  final a = await Stream.fromIterable(List<int>.generate(100, (e) => e + 1))
      .map((e) => fizzBuzzshit(e))
      .toList();
  print(a);
}



String fizzBuzzshit(int s) {
  if (s % 15 == 0) {
    return 'FizzBuzz';
    
  } else if (s % 5 == 0) {
    return 'Buzz';
    
  } else if (s % 3 == 0) {
    return 'Fizz';
    
  } else {
    return '$s';
  }
}
