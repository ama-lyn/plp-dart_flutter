//Combine the above utilities to build a small application. This application should:
//Perform string manipulation on user input.
//Store the results in a collection.
//Save the data to a file.
//Use the date and time utilities to log when each entry was made.

import 'dart:io'; // For file operations

void main() {
  // List to store travel entries
  List<Map<String, String>> travelEntries = [];

  // Add new travel entry
  addTravelEntry(travelEntries);

  // Save data to a file
  saveToFile(travelEntries);

  // Display the entries
  printEntries(travelEntries);
}

void addTravelEntry(List<Map<String, String>> travelEntries) {
  // String Manipulation on user input
  print('Where in Europe would you like to travel?');
  String destination = stdin.readLineSync() ?? '';
  String upperDestination = destination.toUpperCase();
  
  print('What do you plan to do in $destination?');
  String activity = stdin.readLineSync() ?? '';
  String formattedActivity = 'Enjoy the best of $destination by $activity';

  // Get current time for the entry log
  DateTime currentDateTime = DateTime.now();
  String entryTime = '${currentDateTime.day}-${currentDateTime.month}-${currentDateTime.year} ${currentDateTime.hour}:${currentDateTime.minute}';

  // Store the result in a collection
  Map<String, String> entry = {
    'Destination': upperDestination,
    'Activity': formattedActivity,
    'Entry Time': entryTime,
  };
  travelEntries.add(entry);
}

void saveToFile(List<Map<String, String>> travelEntries) {
  // Save the data to a file
  File file = File('travel_entries.txt');
  file.writeAsStringSync('--- Travel Log ---\n', mode: FileMode.write);

  for (var entry in travelEntries) {
    file.writeAsStringSync(
      'Destination: ${entry['Destination']}\n'
      'Activity: ${entry['Activity']}\n'
      'Entry Made On: ${entry['Entry Time']}\n\n',
      mode: FileMode.append,
    );
  }
  print('Travel entries saved to travel_entries.txt');
}

void printEntries(List<Map<String, String>> travelEntries) {
  // Display the travel entries
  for (var entry in travelEntries) {
    print('\nDestination: ${entry['Destination']}');
    print('Activity: ${entry['Activity']}');
    print('Entry Made On: ${entry['Entry Time']}');
  }
}
