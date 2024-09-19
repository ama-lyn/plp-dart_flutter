//Create a Dart program that simulates an online shopping cart system. 
//Your program should implement the following:
//Standard Functions: 
//Create a function calculateTotal that accepts a list of item prices and returns the total price.

//Implement optional parameters for tax calculation.
//Anonymous Functions: 
//Use an anonymous function to filter out items with a price below a certain threshold (e.g., items under $10).

//Higher-Order Functions: 
//Write a function applyDiscount that takes a list of prices and a discount function as parameters. 
//The discount function should reduce the price by a percentage.

//Recursive Functions: 
//Create a recursive function calculateFactorialDiscount that calculates a special discount based on the factorial of the number of items in the cart 
//(e.g., if there are 4 items, the discount is 4! percent).

List<double> itemPrices = [ 29.55, 12.67, 5.41, 6.27,  8.34,  14.90, 4.61, 11.99,7.65, 3.04 ];

//Function that calculate Total Price
double calculateTotal(List<double> prices, {double tax = 0.0}) {
  double totalPrice = 0.0;
  for (int i = 0; i < prices.length; i++) {
    totalPrice += prices[i];
  }
  return totalPrice * (1 + tax);
}


//Function that applies Discount
void applyDiscount(List<double> prices, double discount) {
  double discountPrice = 0.0;
  
  for (int i = 0; i < prices.length; i++) {
    discountPrice += prices[i] * (1 - discount); 
  }
  
  print('Discounted Price: \$${discountPrice.toStringAsFixed(2)}');
}

// Function to calculate factorial recursively
int factorial(int n) {
  if (n <= 1) return 1; 
  return n * factorial(n - 1); 
}

// Function to calculate and apply factorial-based discount
void calculateFactorialDiscount(List<double> prices) {
  int numItems = prices.length;
  int factorialValue = factorial(numItems);
  
  // factorial to a discount percentage
  double discount = factorialValue / 100.0; 
  
  double totalPrice = 0.0;
  for (int i = 0; i < prices.length; i++) {
    totalPrice += prices[i] * (1 - discount); // Apply discount
  }
  
  print('Factorial Discount: ${factorialValue}%');
  print('Discounted Total Price: \$${totalPrice.toStringAsFixed(2)}');
}


void main (){
// Total price with tax
  double totalPrice = calculateTotal(itemPrices, tax: 0.07); 
  print('Total Price with Tax: \$${totalPrice.toStringAsFixed(2)}');

//filter out prices less than 10
  print('Items with Price Below \$10:');
  itemPrices.forEach((itemPrice){
  if(itemPrice < 10){
    print('Item Price: \$${itemPrice.toStringAsFixed(2)}');
  } 
});

//Discounted Price
applyDiscount(itemPrices, 0.4);

//Factorial Discount
calculateFactorialDiscount(itemPrices);
}