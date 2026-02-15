# Dart Workshop: Core Concepts

This repository contains the code base for a Dart workshop covering essential programming concepts. Below is a detailed explanation of each concept with practical code samples.

## Table of Contents
1. [Introduction](#1-introduction)
2. [Variables and Types](#2-variables-and-types)
3. [Collections](#3-collections)
4. [Functions](#4-functions)
5. [Object-Oriented Programming (OOP)](#5-object-oriented-programming-oop)
6. [Asynchronous Programming](#6-asynchronous-programming)
7. [Isolates](#7-isolates)
8. [Exceptions and Error Handling](#8-exceptions-and-error-handling)

---

## 1. Introduction
Dart is a client-optimized language for fast apps on any platform. It is developed by Google and is used to build mobile, desktop, backend, and web applications. It is the language behind the Flutter framework.

**Key Features:**
- **Productive**: Hot reload for fast development.
- **Fast**: Compiles to ARM and x64 machine code for native performance.
- **Multi-platform**: Compiles to native code or JavaScript.

---

## 2. Variables and Types
Dart is a type-safe language, meaning every variable has a type. It also supports type inference (`var`).

### Numerical & String Types
```dart
int age = 28;
double pi = 3.14159;
String name = 'amine';
String greeting = "Hello, $name!"; // String interpolation
String multiLine = '''
  This is a
  multi line string
''';
```

### Null Safety
Dart uses sound null safety to prevent null-dereference errors.
- `String?` allows the variable to be `null`.
- `??` (Null-aware operator): Provides a default value.
- `?.`: Conditional access.
- `!`: Force unwrap (assertions).

```dart
String? maybeNull = null;
String displayName = maybeNull ?? 'Anonymous'; // Returns 'Anonymous'
print(maybeNull?.length); // Returns null instead of throwing
```

---

## 3. Collections
Dart provides powerful collection types like `List`, `Set`, and `Map`.

### Lists (Arrays)
Ordered group of objects.
```dart
List<String> fruits = ['apple', 'banana', 'cherry'];
fruits.add('date');
fruits.remove('banana');

// Functional methods
List<String> upper = fruits.map((f) => f.toUpperCase()).toList();
List<String> longNames = fruits.where((f) => f.length > 5).toList();
```

### Sets
Unordered collection of unique items.
```dart
Set<String> tags = {'dart', 'flutter', 'mobile'};
tags.add('dart'); // Won't add duplicate
print('Union: ${setA.union(setB)}');
```

### Maps
Key-value pairs (Dictionaries).
```dart
Map<String, dynamic> scores = {
  'amine': 95,
  'wail': 90,
};
```

---

## 4. Functions
Functions in Dart are first-class objects.

### Named and Required Parameters
```dart
String buildProfile({
  required String name, 
  int age = 0, 
  String role = 'user'
}) {
  return '$name (age: $age, role: $role)';
}

// Usage
buildProfile(name: 'Alice', age: 30);
```

### Higher-Order Functions
Functions that take other functions as arguments.
```dart
void highOrderFunction(Function func) => func();
```

---

## 5. Object-Oriented Programming (OOP)
Dart is a class-based, object-oriented language with mixin-based inheritance.

### Classes and Abstraction
```dart
abstract class Person {
  String name;
  int age;
  Person(this.name, this.age);
  
  void talk(); // Abstract method
}
```

### Inheritance and Override
```dart
class Trainer extends Person {
  int salary;
  Trainer(super.name, super.age, this.salary);

  @override
  void talk() => print("training students");
}
```

### Mixins
Mixins allow code reuse without traditional inheritance.
```dart
mixin Using {
  void use() => print("using capabilities");
}

class Worker extends Person with Using {
  Worker(super.name, super.age);
  @override
  void talk() => print("working");
}
```

---

## 6. Asynchronous Programming
Asynchronous operations are handled via `Future` and `Stream`.

### Futures (async/await)
```dart
Future<void> asyncFun() async {
  print("Loading...");
  await Future.delayed(Duration(seconds: 2));
  print("Data loaded!");
}
```

### Streams
A sequence of asynchronous events.
```dart
Stream<int> getIntegers() async* {
  yield 1;
  yield 2;
  yield 3;
}
```

---

## 7. Isolates
Isolates are independent workers that don't share memory, communicating only through ports. This is useful for CPU-intensive tasks.

```dart
void heavyTask(SendPort sendPort) {
  // Heavy computation
  sendPort.send(result);
}

void main() {
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(heavyTask, receivePort.sendPort);
  receivePort.listen((msg) => print(msg));
}
```

---

## 8. Exceptions and Error Handling
Handle runtime errors gracefully using `try`, `catch`, and `finally`.

```dart
try {
  double result = 10 / 0;
} catch (e) {
  print("Error occurred: $e");
} finally {
  print("Execution finished.");
}
```
