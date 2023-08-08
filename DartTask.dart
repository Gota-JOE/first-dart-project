void main(List<String> args) {
  print('=================== 1 ====================\n');

  Car car1 = Car('BMW', 'BMw1', 2022);
  car1.getDataC();

  Motorcycle Motorcycle1 = Motorcycle('Honda', 'Honda1', 2018);
  Motorcycle1.getDataM();

  Truck Truck1 = Truck('Van', 'Van1', 2010);
  Truck1.getDataT();

  print('=================== 2 ====================\n');

  Manager m1 = Manager('yousif', 24, 6000);
  m1.getData();

  Developer deve1 = Developer('abdo', 26, 10000);
  deve1.getData();

  Designer d1 = Designer('hafiz', 30, 25000);
  d1.getData();

  print('=================== 3 ====================\n');

  SavingAcount acc1 =
      SavingAcount(2000, 'joe', 230, 158974566, 'bank masr', 123456);
  acc1.acountInformation();

  CheckingAcount acc2 =
      CheckingAcount('mohamed', 300, 12594713, 'bank masr', 111851571811);
  acc2.acountInformation();

  print('=================== 4 ====================\n');

  Rectangle r1 = Rectangle(12, 4);
  r1.area();
  r1.perimeter();

  Circle c1 = Circle(10);
  c1.area();
  c1.perimeter();

  print('=================== 5 ====================\n');

  MySQLConnection sql1 = MySQLConnection();
  sql1.connect(true);
  sql1.execute();
  sql1.query();

  PostgreSQLConnection sql2 = PostgreSQLConnection();
  sql2.connect(false);

  print('=================== 6 ====================\n');

  PayPalGateway paypal1 = PayPalGateway();
  paypal1.initiatePayment();
  paypal1.processPayment();
  paypal1.refundPayment();

  StripeGateway strip1 = StripeGateway();
  strip1.initiatePayment();
  strip1.processPayment();
  strip1.refundPayment();

  print('=================== 7 ====================\n');

  final guestUser = User('joe', AccessLevel.Guest);
  guestUser.performAction();

  final regularUser = User('ahmed', AccessLevel.User);
  regularUser.performAction();

  final moderator = User('abdo', AccessLevel.Moderator);
  moderator.performAction();

  final admin = User('Admin', AccessLevel.Admin);
  admin.performAction();

  print('=================== 8 ====================\n');

  ConsoleLogger con1 = ConsoleLogger();
  con1.logInfo('info message');
  con1.logWarning('warning message');
  con1.logError('error message');

  FileLogger file1 = FileLogger();
  file1.logInfo('welcome to the file');
  file1.logWarning('this file is empty');
  file1.logError('not found');

  print('=================== 9 ====================\n');

  MyClass obj1 = MyClass();
  obj1.recordCreate();
  obj1.recordUpdate();
  obj1.recordDelete();
}

/* 1-Vehicle Hierarchy: Create a class called Vehicle with properties like brand, model, and year. 
Then, 
create subclasses like Car, Motorcycle, 
and Truck that inherit from the Vehicle class.
 Implement specific methods or properties for each subclass that differentiate them from 
each other*/
class Vehicle {
  String? brand;
  String? model;
  int? year;

  Vehicle(this.brand, this.model, this.year);
}

class Car extends Vehicle {
  Car(super.brand, super.model, super.year);

  getDataC() {
    print(
        'the brand of car $brand and his model is $model and production year is : $year\n');
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(super.brand, super.model, super.year);

  getDataM() {
    print(
        'the brand of Motorcycle $brand and his model is $model and production year is : $year\n');
  }
}

class Truck extends Vehicle {
  Truck(super.brand, super.model, super.year);

  getDataT() {
    print(
        'the brand of Truck $brand and his model is $model and production year is : $year\n');
  }
}

/* 2-Employee Hierarchy: Design an employee hierarchy using inheritance. Create a base class 
called Employee with properties like name, age, and salary. Then, create subclasses like 
Manager, Developer, and Designer that inherit from the Employee class. Implement specific 
methods or properties for each subclass that represent their roles or responsibilities.*/
class Employee {
  String? name;
  int? age;
  double? salary;

  Employee(this.name, this.age, this.salary);

  getData() {
    print('defult data');
  }
}

class Manager extends Employee {
  /*@override
  int? age;

  @override
  String? name;

  @override
  double? salary;*/
  Manager(super.name, super.age, super.salary);

  @override
  getData() {
    print('Manager\'s name : $name\nHis age : $age\nHis salary : $salary\n');
  }
}

class Developer extends Employee {
  /*@override
  int? age;

  @override
  String? name;

  @override
  double? salary;*/

  Developer(super.name, super.age, super.salary);

  @override
  getData() {
    print('Developer\'s name : $name\nHis age : $age\nHis salary : $salary\n');
  }
}

class Designer extends Employee {
  /*@override
  int? age;

  @override
  String? name;

  @override
  double? salary;*/

  Designer(super.name, super.age, super.salary);

  @override
  getData() {
    print('Designer\'s name : $name\nHis age : $age\nHis salary : $salary\n');
  }
}

/* 3-Bank Account Abstraction: Implement an abstract class called BankAccount that defines 
common properties and methods for bank accounts. Then, create concrete classes like 
SavingsAccount and CheckingAccount that inherit from the BankAccount class. Implement 
specific behavior for each account type, such as interest calculation for savings accounts 
and overdraft protection for checking accounts.*/
abstract class BankAcount {
  String? name;
  int? accNumber;
  int? id;
  String? bankName;
  int? password = 111851571811;

  BankAcount(this.name, this.accNumber, this.id, this.bankName, this.password);

  acountInformation();
}

class SavingAcount extends BankAcount {
  int? currentAccount;
  SavingAcount(this.currentAccount, super.name, super.accNumber, super.id,
      super.bankName, super.password);

  @override
  acountInformation() {
    print('name of uesr : $name\nyour current account : $currentAccount\n');
  }
}

class CheckingAcount extends BankAcount {
  CheckingAcount(
      super.name, super.accNumber, super.id, super.bankName, super.password);

  @override
  acountInformation() {
    if (this.password == super.password) {
      print('Entry Allowed');
      print(
          'name of uesr : $name\naccount number is : $accNumber\nbank name : $bankName\n');
    }
  }
}

/* 4-Geometric Shapes: Although you mentioned excluding shapes, I'll include a question 
related to advanced inheritance. Create a base class called Shape with properties and 
methods related to geometric shapes. Then, create subclasses like Rectangle, Circle, and 
Triangle that inherit from the Shape class. Implement methods to calculate area and 
perimeter for each shape, and override them in the subclasses with specific formulas.*/
abstract class Shapes {
  area();
  perimeter();
}

class Rectangle extends Shapes {
  late double width;
  late double height;

  Rectangle(this.height, this.width);

  @override
  area() {
    print('area for Rectangle : ${height * width}');
  }

  @override
  perimeter() {
    print('perimeter for Rectangle : ${2 * (height + width)}\n');
  }
}

class Circle extends Shapes {
  late double radius;

  Circle(this.radius);

  @override
  area() {
    print('area for Circle : ${3.14 * radius * radius}');
  }

  @override
  perimeter() {
    print('perimeter for Circle : ${2 * 3.14 * radius}\n');
  }
}

/* 5-Database Connection: Implement a DatabaseConnection interface that defines methods 
like connect(), disconnect(), query(), and execute(). Create concrete classes like 
MySQLConnection and PostgreSQLConnection that implement the DatabaseConnection 
interface. Each class should provide its own implementation for the interface methods.*/
interface class DatabaseConnection {
  bool? connectOrNot;
  connect(connectOrNot) {}

  disconnect(connectOrNot) {}

  query() {}

  execute() {}
}

class MySQLConnection implements DatabaseConnection {
  @override
  connect(connectOrNot) {
    print('connect to MySQLConnection');
  }

  @override
  disconnect(connectOrNot) {
    print('disconnect to MySQLConnection');
  }

  @override
  execute() {
    print('execute');
  }

  @override
  query() {
    print('now you are $connectOrNot\nand your command is ${execute()}\n');
  }

  @override
  bool? connectOrNot = true;
}

class PostgreSQLConnection implements DatabaseConnection {
  @override
  connect(connectOrNot) {
    print('connect to PostgreSQLConnection');
  }

  @override
  disconnect(connectOrNot) {
    print('disconnect to MySQLConnection');
  }

  @override
  execute() {
    print('execute');
  }

  @override
  query() {
    print(
        'now your ${connect(connectOrNot)}\nand your command is ${execute()}\n');
  }

  @override
  bool? connectOrNot;
}

/* 6-Payment Gateway: Design an abstract class called PaymentGateway that declares 
methods like initiatePayment(), processPayment(), and refundPayment(). Create concrete 
classes like PayPalGateway and StripeGateway that extend the PaymentGateway class. Each 
class should provide its own implementation for the abstract methods.
*/
abstract class PaymentGateway {
  initiatePayment();
  processPayment();
  refundPayment();
}

class PayPalGateway extends PaymentGateway {
  @override
  initiatePayment() {
    print('payment via paypal');
  }

  @override
  processPayment() {
    print('processing payment via paypal');
  }

  @override
  refundPayment() {
    print('refunding payment via paypal\n');
  }
}

class StripeGateway extends PaymentGateway {
  @override
  initiatePayment() {
    print('payment via strip');
  }

  @override
  processPayment() {
    print('processing payment via strip');
  }

  @override
  refundPayment() {
    print('refunding payment via strip\n');
  }
}

/* 7-Logging Service: Create an abstract class called Logger that defines methods like 
logInfo(), logWarning(), and logError(). Implement concrete classes like ConsoleLogger and 
FileLogger that extend the Logger class and provide different implementations for logging 
messages.*/

abstract class Logger {
  logInfo(String message);
  logWarning(String message);
  logError(String message);
}

class ConsoleLogger extends Logger {
  @override
  logInfo(String message) {
    print('INFO: $message');
  }

  @override
  logWarning(String message) {
    print('WARNING: $message');
  }

  @override
  logError(String message) {
    print('ERROR: $message\n');
  }
}

class FileLogger extends Logger {
  @override
  logInfo(String message) {
    print('INFO: welcom $message');
  }

  @override
  logWarning(String message) {
    print('WARNING: this file is $message');
  }

  @override
  logError(String message) {
    print('ERROR: $message\n');
  }
}

/*  8- Role-based Access Control: Define an AccessLevel enum that represents different levels 
of access, such as Guest, User, Moderator, and Admin. Create a class called User that 
encapsulates properties like name and accessLevel, and implement methods that perform 
actions based on the user's access level. use(functions and switch cases)*/

/*enum AccessLevel { Guest, User, Moderator, Admin }*/

enum AccessLevel {
  Guest,
  User,
  Moderator,
  Admin,
}

class User {
  String name;
  AccessLevel accessLevel;

  User(this.name, this.accessLevel);

  void performAction() {
    switch (accessLevel) {
      case AccessLevel.Guest:
        print('Guest user actions');

        break;

      case AccessLevel.User:
        print('User actions');

        break;

      case AccessLevel.Moderator:
        print('Moderator actions');

        break;

      case AccessLevel.Admin:
        print('Admin actions');

        break;
    }
  }
}

/* 9-Auditable Mixin: Create a mixin called Auditable that adds auditing functionality to a class. 
The mixin should provide methods like recordCreate(), recordUpdate(), and recordDelete() 
that log audit information whenever an object is created, updated, or deleted.*/

mixin Auditable {
  recordCreate() {
    print('Object created');
  }

  recordUpdate() {
    print('Object updated');
  }

  recordDelete() {
    print('Object deleted');
  }
}

class MyClass with Auditable {
  @override
  recordCreate() {
    print('creat a new object');
  }

  @override
  recordUpdate() {
    print('update the object');
  }

  @override
  recordDelete() {
    print('delete the object');
  }
}


/*======== True and False

1- False
2- False
3- True
4- False
5- True
6- True
7- False

*/

/*======== What do you know about :

1- abstract function 

  abstract funcion is a function that is declared in an abstract class
   and does not have an implementation
   and they must be implented by any class that inherits from abstract class

2- mention different classes exsting in dart 

  (String - int - double -List - Set - Map)

3- what do you know about constructors 

  constructors are special methods used for initializing objects of a class
  used to set initial values to the instance variables of a class
  first method that implented in the class
  
  */ 