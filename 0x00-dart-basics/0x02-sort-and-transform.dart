typedef Product = Map<String, dynamic>;

List<Product> sortByPrice(List<Product> products) {
  var productCopy = [...products];
  productCopy.sort(
      (p1, p2) => (p1['price'] as double).compareTo(p2['price'] as double));
  return productCopy;
}

List<Product> sortByRating(List<Product> products) {
  var productCopy = [...products];
  productCopy.sort(
      (p1, p2) => (p1['rating'] as double).compareTo(p2['rating'] as double));
  return productCopy;
}

List<String> formatProducts(List<Product> products) {
  return products
      .map((item) =>
          "${item['name']} - \$${(item['price'] as double).toStringAsFixed(2)} - (⭐ ${item['rating']})")
      .toList();
}
