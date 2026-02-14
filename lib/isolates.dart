import 'dart:isolate';

void consumeCpuFunction(SendPort sendPort) {
  for (int i = 0; i < 10; i++) {
    print("printing $i");
    sendPort.send(i);
  }
}

void main() {
  List numbers= [];
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(consumeCpuFunction, receivePort.sendPort);
  receivePort.listen((message) {
    numbers.add(message);
  });
}
