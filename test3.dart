main() {
  /*bic obj1 = bic();
  obj1.color = 'red';
  obj1.size = 30;
  obj1.display();
  obj1.changeGear(10);*/

  /*phone phone1 = phone('blue', 'iphone', 200);

  print(
      'the color is :   ${phone1.color}\nthe name is :    ${phone1.name}\nprize :   ${phone1.prize}');
  phone obj = phone.newphone();*/

  Animal firstA = Animal('lion', 'bright yellow', 'Lion Roar', 4, 1.2);
  firstA.display();
  firstA.voicesOfAnimales();

  Animal secondA = Animal('cat', 'white', 'Meow', 4, 23.0);
  secondA.display();
  secondA.voicesOfAnimales();
}

/*class bic {
  int? speed;
  String? color;
  int? size;

  void changeGear(int newSpeed) {
    newSpeed += 10;
    print('the new speed is : $newSpeed');
    //print('${speed.toInt()+=newSpeed}');
  }

  void display() {
    print('the color of bic is $color and its size is $size');
  }
}*/

/*class phone {
  String? color;
  String? name;
  int? prize;

  phone(color, name, prize) {
    this.color = color;
    this.name = name;
    this.prize = prize;
  }
  phone.newphone() {
    print('');
  }
}*/

class Animal {
  String? name;
  String? color;
  String? animalVoice;
  int? nunberOfLegs;
  double? animalLength;

  Animal(name, color, animalVoice, nunberOfLegs, animalLength) {
    this.name = name;
    this.color = color;
    this.animalVoice = animalVoice;
    this.nunberOfLegs = nunberOfLegs;
    this.animalLength = animalLength;
  }

  display() {
    print(
        'The first animal is : $name\nHis color is : $color\nHis number of legs : $nunberOfLegs\nHis length is : $animalLength');
  }

  voicesOfAnimales() {
    if (name == 'lion' || name == 'Lion') {
      animalVoice = 'Lion Roar';
      print('His voice : $animalVoice\n');
    } else if (name == 'cat') {
      animalVoice = 'Meow';
      print('His voice : $animalVoice');
    } else {
      print('None');
    }
  }
}
