import 'dart:async';

Future<void> asyncfun()async{
    print("printing future1");
  }

Stream<int> getintegers() async* {
  print("printing future1");
  yield 1;
  yield 2;
  yield 3;
}

void main() {
  Future.microtask(() {
    print("printing future1");
  });
  Future(() => print("print future2"));
  print("normal 1");
  Timer(Duration(seconds: 10), () => print("timer1"));
  Future(() => print("print future3")).then((_) => print("then"));
  print("normal2");
}
