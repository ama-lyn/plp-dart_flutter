//Develop a program that uses Dart's DateTime class.
//Format, parse, and manipulate dates (e.g., add/subtract days).
//Calculate the difference between two dates

void main() {
  // Current Date
  DateTime today = DateTime.now();
  print('Today\'s Date: ${today.toLocal()}');

  // Format the date
  String formattedDate = '${today.day}-${today.month}-${today.year}';
  print('Formatted Date: $formattedDate');

  // Add days to current date (e.g., planning a trip in 7 days)
  DateTime tripStartDate = today.add(Duration(days: 7));
  print('Trip Starts on: ${tripStartDate.toLocal()}');

  // Subtract days from a date (e.g., return from trip after 10 days)
  DateTime tripEndDate = tripStartDate.add(Duration(days: 10));
  print('Trip Ends on: ${tripEndDate.toLocal()}');

  // Calculate the difference between two dates
  Duration difference = tripEndDate.difference(today);
  print('My trip will last: ${difference.inDays} days');

  // Parsing a date string (e.g., booking confirmation date)
  String bookingDateString = '2024-10-01';
  DateTime bookingDate = DateTime.parse(bookingDateString);
  print('Booking Date: $bookingDate');

  // Calculate days remaining until trip starts
  Duration daysUntilTrip = tripStartDate.difference(today);
  print('Days until my trip: ${daysUntilTrip.inDays} days');
}
