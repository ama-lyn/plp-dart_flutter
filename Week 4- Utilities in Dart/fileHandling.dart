//Write a Dart program that reads content from a file and writes new data into another file.
//Demonstrate how to handle errors during file operations.

import 'dart:io';

void readFileAndWriteToAnother() async {
  try {
    // Read content from the input file
    File inputFile = File('input.txt');
    String content = await inputFile.readAsString();
    print('Content of input.txt:\n$content');

    // Write new data to the output file
    File outputFile = File('output.txt');
    await outputFile.writeAsString('New content written to the file.\n');

    // Append the content read from input file to the output file
    await outputFile.writeAsString(content, mode: FileMode.append);
    print('Data has been written to output.txt.');
  } catch (e) {
    // Error handling
    print('Error during file operations: $e');
  }
}

void main() {
  readFileAndWriteToAnother();
}
