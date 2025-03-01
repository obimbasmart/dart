import '0x02-sort-and-transform.dart';
void main(List<String> args) {
  List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 1200.99, "rating": 4.5},
    {"name": "Phone", "price": 699.49, "rating": 4.7},
    {"name": "Headphones", "price": 149.99, "rating": 4.3},
    {"name": "Monitor", "price": 299.99, "rating": 4.6},
    {"name": "Keyboard", "price": 89.99, "rating": 4.2},
  ];


  print(sortByPrice(products));
  print(sortByRating(products));
  print(formatProducts(products));
}
