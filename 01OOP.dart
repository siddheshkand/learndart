class Person {
  String firstName;
  String lastName;

  //constructor
  Person(this.firstName, this.lastName);

  printName() {
    print("Mr. $lastName $firstName");
  }
}

void main() {
  var person = new Person("Siddhesh", "Kand");
  person.printName();
}

/*
String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
 */
