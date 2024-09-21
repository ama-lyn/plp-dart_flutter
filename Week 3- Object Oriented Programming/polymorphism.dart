//Polymorphism:
//Demonstrate method overriding where different subclasses have their unique implementation of a common method.

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
    return 'Bought a $name made of $_material for \$${price.toStringAsFixed(2)}';
  }
}

// Subclass
class Chair extends Furniture {
  // Attribute unique to Chair
  String type;

  // Constructor for Chair
  Chair(String material, String name, double price, this.type)
      : super(material, name, price);

  // Overriding the buy method to include Chair-specific information
  @override
  String buy() {
    return 'Charlie bought a $type, which is made of $_material for \$${price.toStringAsFixed(2)}';
  }

  // Method specific to Chair
  void displayType() {
    print('It is a $type');
  }
}

void main() {
  // Creating a Chair object
  Chair chair = Chair('Wood', 'Chair', 50.00, 'Dining Chair');

  print(chair.buy());
  chair.displayType();
}
