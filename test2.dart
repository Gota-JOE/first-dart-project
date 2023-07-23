import 'dart:io';

main() {
  print('=============== task (1) ===============\n');
  print('inter a list of names...Press 0 to exit...');
  List<String> names = ListaOfNames();
  for (int i = 0; i < names.length; i++) {
    print('the name is ${names[i]}  and the item count is ${i + 1}');
  }
  //var x = stdin.readLineSync();
  //print('the list of names is $x');
  print('=============== task (2) ===============');
  print('enter any numbers...Press empty line to exit...');
  var lista = [];
  while (true) {
    var y = stdin.readLineSync();
    lista.add(y);
    if (y == '') {
      lista.removeLast();
      break;
    }
  }
  print('List  : $lista');
  print('Tuple : (${lista.join(', ')})');

  //for (int i = 0; i<lista.length; i++) {
  // var xx = lista.reversed;
  /* var res ;
    var z = lista[i];
    lista[i] = lista[i-1];
    var y = lista[i];
    var xx =
    //var xx = lista[i] lista[i - 1];
    //var re = lista.reversed;*/
}

List<String> ListaOfNames() {
  List<String> lista = [];
  while (true) {
    String x = stdin.readLineSync()!;
    if (x == '0') {
      break;
    }
    lista.add(x);
    ;
  }
  return lista;
}
  //print(xx);
  //print('Tuple : $re');

  //List lista = [y];

  //print(y);
  //var z = number();
  //print('${number()}')


/*number() {
  List? x = [];
  while (true) {
    int y = stdin.readLineSync();
    if (y == '') {
      y.add(x);
    } else {
      break;
    }
  }
  return x;
}*/
