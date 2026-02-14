abstract class Person {
  String name;
  int age;
  bool isDev;
  Person(this.name, this.age, this.isDev);
  //methods
  void talk();

  int calcAge() {
    return 20;
  }
}

//inheritance
class worker extends Person with Using {
  int salaire;
  worker(super.name, super.age, super.isDev, this.salaire);

  @override
  void talk() {
    print("woking");
  }

  @override
  void usingmixin(){
    print("suing mixin");
  }
}

mixin Using {
  void usingmixin() {
    print("using mixin");
  }
}

class Trainer extends Person {
  int salaire;
  Trainer(super.name, super.age, super.isDev, this.salaire);
  @override
  void talk() {
    print("training");
  }
}

void main() {
  Person person1 = Trainer("amine", 21, true, 10);
  person1.talk();
  person1.calcAge();
  Person person2 = worker("name", 21, true, 10);

  List<Person> mylist = [person2, person1, Trainer("name", 21, true, 10)];
  mylist.forEach((e) => e.talk());
}
