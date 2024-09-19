//Create a Dart program that defines and initializes variables of the following types: 
//int, double, String, bool, and List.

//Implement functions to:
//Convert a String to int and double.
//Convert an int to String and double.

void stringToInt() {
  String str = "254";
  int num = int.parse(str);
  print(num);
}

void stringToDouble() {
  String str = "254";
  double num = double.parse(str);
  print(num); 
}

void intToString() {
  int number = 350;
  String str = number.toString();
  print(str);
}

void intToDouble() {
  int number = 792;
  double num = number.toDouble();
  print(num);  
}

//Write a function convertAndDisplay that:
//Takes a String representing a number.
//Converts the String to int and double.
//Prints the results.

void convertAndDisplay(){
  String str = "254";
  int num = int.parse(str);
  double num2 = double.parse(str);
  print('String to Int $num');
  print('String to Double $num2');
}

void main (){
  // int variable
  int num = 10;
  print(num);

  //double variable
  double pi = 3.14159;
  print(pi);

  //String variable
  String Developer = 'Gwendolyn';
  print(Developer);

  //Bool variable
  bool isDev = true;
  print(isDev);

  //List variable
  List<String> languages = ['Dart', 'Python', 'JavaScript'];
  print(languages);

  //functions
  stringToInt();
  stringToDouble();
  intToString();
  intToDouble();

  convertAndDisplay();
}