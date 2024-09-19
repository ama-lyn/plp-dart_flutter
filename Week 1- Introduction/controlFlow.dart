//Implement a Dart program that:
//Uses if-else statements to check if a number is positive, negative, or zero.
//Uses if-else statements to determine if a person is eligible to vote based on age (must be 18 or older)

//Check if number is positive, negative or zero
void checkNumber(int num) {
  if (num > 0) {
    print('The number is positive.');
  } else if (num < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}

//Eligibility to vote based on age
void checkEligibility(int age) {
  if (age >= 18) {
    print('You are eligible to vote.');
  } else {
    print('You are not eligible to vote.');
  }
}

//Create a program that:
//Uses a switch statement to print the day of the week based on a given int
//(1 for Monday, 2 for Tuesday, etc.)
void checkDay(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
  }
}

// Implement the following:
//A for loop that prints numbers from 1 to 10.
//A while loop that prints numbers from 10 to 1.
//A do-while loop that prints numbers from 1 to 5.

//A for loop that prints numbers from 1 to 10.
void print1to10() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

//A while loop that prints numbers from 10 to 1.
void print10to1() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

//A do-while loop that prints numbers from 1 to 5.
void print1to5() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i < 6);
}

void main() {
  checkNumber(-2);
  checkEligibility(25);
  checkDay(3);
  print1to10();
  print("");
  print10to1();
  print('');
  print1to5();
}
