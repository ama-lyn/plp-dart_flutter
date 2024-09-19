//Write a Dart program that:
//Defines a List of int numbers.
//Uses a for loop to iterate through the list and:
//Print each number.
//Use if-else statements to check if the number is even or odd.
//Implements a switch statement to categorize numbers into "small" (1-10), "medium" (11-100), or "large" (101+).

void main(){
  List<int> numbers = [924, 5, 9, 88, 716, 542, 27, 94, 3, 137, 3, 128, 42, 460, 73];


  for (int i = 0; i < numbers.length; i++) {
  print(numbers[i]);
  }

  for (int i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 == 0) {
    print("${numbers[i]} is Even");
  } else {
    print("${numbers[i]} is Odd");
  };
  }
  for (int i = 0; i < numbers.length; i++) {
    switch (numbers[i]) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("${numbers[i]} is Small");
        break;

      default:
        if (numbers[i] >= 11 && numbers[i] <= 100) {
          print("${numbers[i]} is Medium");
        } else if (numbers[i] >= 101) {
          print("${numbers[i]} is Large");
        }
    }
}

}
