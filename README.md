# Dart Workshop

## 0. Introduction
- What is Dart?
- Where is Dart used?
  - Flutter (mobile & desktop)
  - Flutter Web
  - Dart backend (Dart Frog)
- Why Dart is different:
  - Compiles to native (AOT)
  - JIT for fast development
  - Single-threaded event loop

---

## 1. Core Language

### 1.1 Variables & Types
- Numbers: `int`, `double`
- Strings: `String`
- Booleans: `bool`
- Null safety: `?`, `!`, `??`
- Keywords: `var`, `final`, `const`

### 1.2 Collections
#### List
- Ordered collection
- Methods: `.add`, `.remove`, `.forEach`, `.map`, `.where`, `.reduce`
#### Set
- Unique unordered collection
#### Map
- Key-value pairs
- Access: `map[key]`

### 1.3 Other Types
- Runes (Unicode code points) : '\u2764' '\u{1F600}'
- Null (`Null`)

---

## 3. Functions
- Function declaration
- Arrow functions
- Named parameters
- Optional parameters and default values
- Higher-order functions
- Anonymous functions 

---

## 4. Object-Oriented Programming (OOP)

### 4.1 Classes
- Properties & methods
- Constructors: default, named, optional
- `this` keyword

### 4.2 Inheritance
- `extends` keyword
- Overriding methods
- `super` keyword

### 4.3 Abstract Classes
- Cannot be instantiated
- Can define abstract methods

### 4.4 Interfaces
- Using `implements` keyword
- Must override all methods

### 4.5 Mixins
- Using `with` keyword
- Code reuse without inheritance

### 4.6 Enums
- Define finite set of values

---

## 5. Asynchronous Programming

### 5.1 Event Loop & Queues
- Single-threaded model (while kotlin and swift are multi thread languages)
- Call Stack
- Event Queue
- Microtask Queue
- Execution order: Synchronous → Microtasks → Event queue

### 5.2 Future
- Represents a value that will be available later
- `.then` for handling result

### 5.3 async/await
- `async` functions
- `await` pauses function until Future completes
- Non-blocking

### 5.4 Stream
- Sequence of asynchronous events
- `async*` and `yield`
- Listening to multiple values over time

### 5.5 Isolates
- Independent memory and event loop
- Communication via message passing
- Useful for CPU-heavy tasks
- SendPort and ReceivePort

---

## 6. Exceptions
- `try`, `catch`, `finally`
- Custom exception classes
- Throwing exceptions

