//Encapsulation:
//Create a class that encapsulates data and methods.
//Ensure that sensitive data is hidden using private variables and controlled access methods.

class Furniture {
  // Private attribute
  String _material;

  // Constructor to initialize material
  Furniture(this._material);

  // Getter method to access the material
  String get material => _material;

  // Setter method to update material with control
  set material(String value) {
    if (value.isNotEmpty) {
      _material = value;
    } else {
      print('Material cannot be empty');
    }
  }

  // Method to simulate buying furniture
  String buy() {
    return 'Bought furniture made of $_material';
  }
}

void main() {
  // Initialize Furniture object with material
  Furniture furniture = Furniture('Wood');

  // Access and print the material
  print('Material: ${furniture.material}');

  // Change the material using the setter
  furniture.material = 'Metal';
  print('Updated Material: ${furniture.material}');

  // Buy the furniture
  print(furniture.buy());
}
