enum Genre { Action, Comedy, Drama, SciFi, Horror }

typedef User = Map<String, dynamic>;
typedef Movie = Map<String, dynamic>;

Set<String> getUniqueMovies(List<User> users) {
  var uniqueMovies = users
      .expand((user) => user['movies'])
      .map((movie) => movie['title'] as String)
      .toSet();

  return uniqueMovies;
}

Genre getMostWatchedGenre(List<User> users) {
  var mostWatchedGenre = users
      .expand((user) => user['movies'])
      .map((movie) => movie['genre'])
      .fold(<Genre, int>{}, (map, element) {
        map[element] = (map[element] ?? 0) + 1;
        return map;
      })
      .entries
      .reduce((a, b) => a.value > b.value ? a : b);

  return mostWatchedGenre.key;
}

String recommendMovie(int age) {
  if (age < 0) {
    return "Invalid age! Age cannot be negative.";
  }

  Genre? result;

  switch (age) {
    case >= 0 && <= 25:
      result = Genre.SciFi;
      break;
    case >= 26 && <= 35:
      result = Genre.Action;
      break;
    case > 35:
      result = Genre.Comedy;
      break;
  }

  return "We recommend watching an ${result?.name} movie!";
}
