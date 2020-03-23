import 'dart:async';


void main(List<String> args) async {
  Stream stream = numberStream(100);
  await for (var s in stream) {
    print('$s');
  }
}


Stream numberStream(num s) async* {
  for (var i = 1; i <= 100; i++) {
    fizzBuzzshit(i);
    await Future.delayed(const Duration(milliseconds: 50));
    yield i;
  }
}

void fizzBuzzshit(num s) async {
  await Future.delayed(const Duration(milliseconds: 50));
  if (s % 15 == 0) {
    print('(FizzBuzz below)');
  } else if (s % 5 == 0) {
    print('(Buzz below)');
  } else if (s % 3 == 0) {
    print('(Fizz below)');
  } else {}
}
