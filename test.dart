void main(List<String> args) {
  List<Map<String, dynamic>> user_data = [
    {'name': 'yousif', 'age': 24, 'salary': 550},
    {'name': 'moh', 'age': 18, 'salary': 450},
    {'name': 'ahmed', 'age': 22, 'salary': 320},
    {'name': 'ali', 'age': 30, 'salary': 150}
  ];
  user_data.forEach((user) {
    print("Name : ${user["name"]}");
    print("Age : ${user['age']}");
    print("Salary : ${user["salary"]}");
    print('=======================');
  });
}
  /*

  ---------- first ----------

  1- اسناد قيمة للمتغير مباشرة 
  int age = 20 ;

  2- اضافة علامة ? بعد كتابة نوع المتغير
  int ?age ;

  3- عن طريق كتابة الامر late
  late int x ;
  x = 55 ;

  4- عن طريق كتابة الامر var
  var y = 55 ;

  ---------- second ----------

  we can declare varible that can be null in dart ...
  int? x;
  print(x);

  var xx;
  print(xx);

  dynamic y;
  print(y);

  ---------- third ----------

  we can convert a varible from one type to another with type casting ...
  var x = 10 ;
  var text = x.toString();
  print("age " + text);


  
  */