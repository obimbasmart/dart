import 'dart:convert';

List<Map<String, dynamic>> parseArticles(String jsonStr) {
  List<dynamic> articles = [];
  List<Map<String, dynamic>> formattedArticles = [];

  try {
    articles = jsonDecode(jsonStr);
  } on FormatException {
    return [];
  }

  for (var item in articles) {
    var article = item as Map<String, dynamic>;
    DateTime? parsedDate;
    if (article['publishedAt'] is String) {
      try {
        parsedDate = DateTime.parse(article['publishedAt']);
      } catch (e) {
        parsedDate = null;
      }
    }

    formattedArticles.add({
      "title": article["title"] ?? "Unknown", // null-aware operator
      "author": article["author"] ?? "Unknown",
      "content": article["content"] ?? "No Content",
      "publishedAt": parsedDate
    });
  }

  return formattedArticles;
}
