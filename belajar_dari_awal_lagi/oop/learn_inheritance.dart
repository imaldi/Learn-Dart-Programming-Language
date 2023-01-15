// A person. The implicit interface contains greet().
import 'learn_oop_class.dart';

class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
// implicit interface
// cant access "super class"
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

// implicit interface beda dengan inheritance
// class Cat implements Animal {
//   @override
//   int jumlahKaki = 4;

//   @override
//   int jumlahMata = 2;

//   @override
//   String namaPanggilan = "Tom";

//   @override
//   bergerak() {
//     print("jalan");
//   }

//   @override
//   bersuara(String suaranyaGimana) {
//     print("Meong");
//   }

//   @override
//   makan() {
//     print("Pake mulut");
//   }
// }

class Cat extends Animal {
  Cat(
      {super.namaPanggilan = "Default Name",
      required super.jumlahKaki,
      required super.jumlahMata});
}

// inheritance
// dog ini adalah subclass dari animal
class Dog extends Animal {
  Dog({
    required super.namaPanggilan,
    super.jumlahKaki: 4,
    super.jumlahMata: 2,
  });

  // Dog.default():
  //   namaPanggilan = "A",
  //   jum

  @override
  bergerak() {
    // super
    //     .bergerak(); // => bisa kita isi dengan langkah2 yg umum bakal pasti di terapin di semua class yg extends dia
    print("Lari nya anjing"); // specific anjing aja
  }
}

/// abstract class is useful for defining a super class so it can't be instatiated
/// to make sure the class is concrete / have specific implementation
abstract class Plants {
  int a;
  Plants(this.a);

  // abstract method => we don't specify how it works
  // void photosynthesis();

// kalau kasih implementasi default, subclass ga wajib override
  void photosynthesis() {
    print("Secara umum semua tanaman bisa");
  }
}

class Grass extends Plants {
  Grass(super.a);
  // @override
  // void photosynthesis() {
  //   print("cara rumput");
  // }
}

class Bamboo extends Plants {
  Bamboo(super.a);

  // @override
  // void photosynthesis() {
  //   print("cara bambu");
  // }
}

void main() {
  Person a = Impostor();
  Dog newDog =
      Dog(namaPanggilan: "Akamaru"); // instantiated => ngebuat instance baru
  print("jumlah kaki ${newDog.jumlahKaki}");
  newDog.bergerak();
  // var b = Plants(); // abstract class can't be instantiated
  var b = Grass(0); // abstract class can't be instantiated
  // polymorphism => using superclass
  Plants c;
  // c = Plants(); // ga bisa karena class plants itu abstract
  c = Grass(0);
  c = Bamboo(0);

  // print(greetBob(Person('Kathy')));
  // print(greetBob(Impostor()));
}
