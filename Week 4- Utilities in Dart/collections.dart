//Create a Dart program that demonstrates the use of lists, sets, and maps.
//Include operations like adding, removing, and iterating over items.
//Showcase scenarios where each collection type is most appropriate.

void main() {
  // List: Ordered collection of places in Europe
  List<String> placesToVisit = ['Paris', 'Berlin', 'Rome', 'Amsterdam', 'Barcelona'];

  // Add and remove operations on List
  placesToVisit.add('Prague');
  placesToVisit.remove('Berlin');

  print('Places to Visit in Europe (List):');
  placesToVisit.forEach((place) => print(place));

  // Set: Unique collection of countries visited (no duplicates)
  Set<String> countriesVisited = {'France', 'Germany', 'Italy', 'Netherlands'};
  
  // Add and remove operations on Set
  countriesVisited.add('Spain');
  countriesVisited.remove('Germany');
  
  print('\nCountries Visited (Set):');
  countriesVisited.forEach((country) => print(country));

  // Map: Associating places with their famous landmarks
  Map<String, String> landmarks = {
    'Paris': 'Eiffel Tower',
    'Rome': 'Colosseum',
    'Barcelona': 'Sagrada Familia',
  };
  
  // Adding a new entry to Map
  landmarks['Amsterdam'] = 'Canals';
  
  print('\nFamous Landmarks (Map):');
  landmarks.forEach((place, landmark) => print('$place: $landmark'));
}
