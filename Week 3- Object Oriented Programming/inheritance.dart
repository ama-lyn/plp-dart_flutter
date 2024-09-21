//Inheritance:
//Implement a subclass that inherits properties and methods from a superclass.

// Superclass
class Furniture {
  // Attributes
  String _material; // private
  String name;
  double price;

  // Constructor to initialize material, name, and price
  Furniture(this._material, this.name, this.price);

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
    return 'I bought a $name made of $_material for \$${price.toStringAsFixed(2)}';
  }
}

// Subclass
class Chair extends Furniture {
  // Attribute unique to Chair
  String type;

  // Constructor for Chair
  Chair(String material, String name, double price, this.type)
      : super(material, name, price);

  // Method specific to Chair for buying a chair
  String buyChair() {
    return 'It\'s a $type';
  }
}

void main() {
  // Creating a Chair object
  Chair chair = Chair('Plastic', 'Chair', 50.00, 'Kitchen Chair');

  print(chair.buy());
  print(chair.buyChair());


  
}
