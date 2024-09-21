//Abstraction:
//Create abstract classes and define abstract methods that are implemented by subclasses.

// Abstract class
abstract class Furniture {
  // Abstract method
  void material();
  
  // Abstract method for buying furniture
  String buy();
}

// Subclass
class Chair extends Furniture {
  String _material;
  String type;
  double price;

  // Constructor to initialize Chair properties
  Chair(this._material, this.type, this.price);

  // Implementing the material method
  @override
  void material() {
    print('Material used for this $type is $_material');
  }

  // Implementing the buy method
  @override
  String buy() {
    return 'Veronicah bought a $type for \$${price.toStringAsFixed(2)}';
  }
}

void main() {
  // Create an instance of Chair
  Chair chair = Chair('Wood', 'Rocking Chair', 100.00);

  // Call the implemented methods
  print(chair.buy());
  chair.material();
}
