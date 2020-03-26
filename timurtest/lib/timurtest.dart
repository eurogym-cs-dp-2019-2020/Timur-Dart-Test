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
