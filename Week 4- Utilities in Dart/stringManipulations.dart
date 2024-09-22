//Implement a program that demonstrates string concatenation, interpolation, substring extraction, and case conversion (upper/lowercase).
//Add functionality to reverse a string and count its length.

void stringManipulation() {
  // String Concatenation
  String city = "Paris";
  String country = "France";
  String location = city + ", " + country; // Combines city and country
  print('Location: $location');

  // String Interpolation
  int years = 7;
  String goal = "In ${years - 3} years, I will travel to $location."; // Embeds expressions directly into a string
  print('Goal: $goal');

  // Substring Extraction
  String secret = "Amsterdam's nightlife is wild! IFYKYK";
  String extracted = secret.substring(0, 30); // Extracts part of the string
  print('Extracted: $extracted');

  // Case Conversion (upper/lowercase)
  String place = "Switzerland";
  String upper = place.toUpperCase(); // Converts to uppercase
  String lower = place.toLowerCase(); // Converts to lowercase
  print('Uppercase: $upper');
  print('Lowercase: $lower');

  // Reverse String
  String reversed = location.split('').reversed.join(''); // Reverses the string
  print('Reversed Location: $reversed');

  // String Length
  int length = location.length; // Counts the number of characters
  print('Location Length: $length');
}

void main() {
  stringManipulation();
}