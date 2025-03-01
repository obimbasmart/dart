# Dart Beginner Exercises


This repository contains self-contained Dart exercises designed to improve your understanding of various Dart concepts.


<details>
  <summary><code>0x00-json-parsing.dart</code> - JSON Parsing Without Classes</summary>


### **Motive**  
- Work with **Dart’s type system** and **null safety**  
- Learn to handle **maps and lists in Dart**  
- Practice **JSON parsing**  

### **Problem Statement**  
You're building a small news app. Given a JSON response, extract data from it and return a list of maps with structured information.  

#### **1️⃣ Tasks to Implement**
1. **Create a function** `List<Map<String, dynamic>> parseArticles(String jsonStr)` that:  
   - Accepts a JSON string (containing an array of articles).  
   - Converts it into a list of maps where each article has:  
     - `title` (String)  
     - `author` (String, optional)  
     - `content` (String)  
     - `publishedAt` (DateTime) **converted from a string**  
   - Handles missing fields gracefully (if `author` is missing, set it to `"Unknown"`).  
   - Handles invalid JSON by returning an empty list instead of crashing.  

### **Example JSON Input**
```json
'[
  {
    "title": "Dart is awesome!",
    "author": "John Doe",
    "content": "Dart is gaining popularity in backend development.",
    "publishedAt": "2024-02-27T12:00:00Z"
  },
  {
    "title": "Null safety in Dart",
    "content": "Dart introduced null safety to eliminate runtime errors.",
    "publishedAt": "2024-02-26T08:30:00Z"
  }
]'
```

### **Expected Output**
```dart
[
  {
    "title": "Dart is awesome!",
    "author": "John Doe",
    "content": "Dart is gaining popularity in backend development.",
    "publishedAt": DateTime(2024, 2, 27, 12, 0, 0)
  },
  {
    "title": "Null safety in Dart",
    "author": "Unknown",
    "content": "Dart introduced null safety to eliminate runtime errors.",
    "publishedAt": DateTime(2024, 2, 26, 8, 30, 0)
  }
]
```

### **Bonus Challenge 🌟**
- Add a function **`String articlesToJson(List<Map<String, dynamic>> articles)`** to convert the list back to a JSON string.

📂 **Filename:** `0x00-json-parsing.dart`  

</details>


<br>

<details>
  <summary><code>0x01-functional-programming.dart</code> - Functional Programming & Data Processing</summary>


### **Motive**
- Use **higher-order functions** (`map`, `where`, `reduce`)  
- Improve **code efficiency** by replacing loops with functional constructs  
- Get comfortable with **list transformations**  

### **Problem Statement**
You have a **list of student scores**. Your task is to **process the scores** using functional programming techniques.

### **Given Data (List of Maps)**
```dart
List<Map<String, dynamic>> students = [
  {"name": "Alice", "score": 85},
  {"name": "Bob", "score": 58},
  {"name": "Charlie", "score": 92},
  {"name": "David", "score": 76},
  {"name": "Eve", "score": 45},
];
```

### **Tasks to Implement**
1. **Filter passing students** (`score >= 60`)  
   - Return a list of names of students who passed.  

2. **Calculate the class average**  
   - Use `.map()` and `.reduce()` to compute the average score.  

3. **Find the top student**  
   - Return the name of the student with the **highest** score.  

### **Expected Output**
```dart
print(getPassingStudents(students)); 
// Output: ["Alice", "Charlie", "David"]

print(getClassAverage(students)); 
// Output: 71.2  (or similar, based on precision)

print(getTopStudent(students)); 
// Output: "Charlie"
```

### **Bonus Challenge 🌟**
- Sort students by score (highest to lowest) using `.sort()`.  
- Convert the student list into a **map of name → score** using `.map()`.  

📂 **Filename:** `0x01-functional-programming.dart`  
</details>

<br>

<details>
  <summary><code>0x02-sort-and-transform.dart</code> - Data Transformation & Sorting</summary>


### **Motive**  
- Master **sorting lists** using `.sort()` and `.compareTo()`  
- Use **`.map()`** to transform data efficiently  
- Work with **custom sorting criteria**  

---

### **Problem Statement**  
You are given a **list of products** in a store, each represented as a map with:  
- `name` (String)  
- `price` (double)  
- `rating` (double, from 1.0 to 5.0)  

#### **1️⃣ Given Data**
```dart
List<Map<String, dynamic>> products = [
  {"name": "Laptop", "price": 1200.99, "rating": 4.5},
  {"name": "Phone", "price": 699.49, "rating": 4.7},
  {"name": "Headphones", "price": 149.99, "rating": 4.3},
  {"name": "Monitor", "price": 299.99, "rating": 4.6},
  {"name": "Keyboard", "price": 89.99, "rating": 4.2},
];
```

---

### **2️⃣ Tasks to Implement**
1. **Sort products by price (ascending order)**  
   - Return a sorted list where the cheapest product is first.  

2. **Sort products by rating (highest first)**  
   - Return a sorted list where the highest-rated product is first.  

3. **Transform the list into a list of strings**  
   - Convert each product into a string formatted as:  
     ```
     "Laptop - $1200.99 (⭐ 4.5)"
     ```  
   - Use **`.map()`** to do this efficiently.  

---

### **Expected Output**
```dart
print(sortByPrice(products));
/*
[
  {"name": "Keyboard", "price": 89.99, "rating": 4.2},
  {"name": "Headphones", "price": 149.99, "rating": 4.3},
  {"name": "Monitor", "price": 299.99, "rating": 4.6},
  {"name": "Phone", "price": 699.49, "rating": 4.7},
  {"name": "Laptop", "price": 1200.99, "rating": 4.5}
]
*/

print(sortByRating(products));
/*
[
  {"name": "Phone", "price": 699.49, "rating": 4.7},
  {"name": "Monitor", "price": 299.99, "rating": 4.6},
  {"name": "Laptop", "price": 1200.99, "rating": 4.5},
  {"name": "Headphones", "price": 149.99, "rating": 4.3},
  {"name": "Keyboard", "price": 89.99, "rating": 4.2}
]
*/

print(formatProducts(products));
/*
[
  "Laptop - $1200.99 (⭐ 4.5)",
  "Phone - $699.49 (⭐ 4.7)",
  "Headphones - $149.99 (⭐ 4.3)",
  "Monitor - $299.99 (⭐ 4.6)",
  "Keyboard - $89.99 (⭐ 4.2)"
]
*/
```

---

### **Bonus Challenge 🌟**
- Sort products **by rating first, then by price (if ratings are equal)**  
- Convert the list into a **Map<String, double>** where the name is the key, and the price is the value  

📂 **Filename:** `0x02-sort-and-transform.dart`  

</details>

<br>

<details>
  <summary><code>0x03-movie-analysis.dart</code> - Movie Analysis & Data Processing</summary>


### **Motive**  
- Master **sets & uniqueness**  
- Work with **enums** for structured data  
- Use **functional techniques** (`expand`, `map`, `fold`, `reduce`)  
- Apply **pattern matching (`switch-case`)**  

---

## **📝 Problem Statement**  
You are building a **movie recommendation system**. Given a list of users and the movies they have watched, your task is to **analyze movie preferences**.

### **1️⃣ Given Data**
```dart
enum Genre { Action, Comedy, Drama, SciFi, Horror }

List<Map<String, dynamic>> users = [
  {
    "name": "Alice",
    "age": 25,
    "movies": [
      {"title": "Inception", "genre": Genre.SciFi},
      {"title": "Avengers", "genre": Genre.Action},
      {"title": "Joker", "genre": Genre.Drama}
    ]
  },
  {
    "name": "Bob",
    "age": 30,
    "movies": [
      {"title": "The Dark Knight", "genre": Genre.Action},
      {"title": "Interstellar", "genre": Genre.SciFi},
      {"title": "The Hangover", "genre": Genre.Comedy}
    ]
  },
  {
    "name": "Charlie",
    "age": 22,
    "movies": [
      {"title": "Avengers", "genre": Genre.Action},
      {"title": "The Conjuring", "genre": Genre.Horror},
      {"title": "Joker", "genre": Genre.Drama}
    ]
  }
];
```

---

## **2️⃣ Tasks to Implement**
### **1. Get All Unique Movies Watched (Across All Users)**
- Return a **list of unique movie titles**, sorted alphabetically.  
- Use a **Set** to ensure uniqueness.  

### **2. Find the Most Watched Genre**
- Determine which **movie genre appears the most** across all users.  
- Use **`fold()` or `map()` + `reduce()`** to count occurrences.  
- Return the most-watched genre **as a `Genre` enum value**.  

### **3. Recommend a Movie Based on Age Group**
- Implement a function `recommendMovie(int age)` that returns a **movie recommendation** based on age:  
  - **Under 25** → Recommend **Sci-Fi**  
  - **25-35** → Recommend **Action**  
  - **Above 35** → Recommend **Comedy**  
- Use a **switch-case with pattern matching** to determine the recommendation.  

---

## **3️⃣ Expected Output**
```dart
print(getUniqueMovies(users));  
// Output: ["Avengers", "Inception", "Interstellar", "Joker", "The Conjuring", "The Dark Knight", "The Hangover"]

print(getMostWatchedGenre(users));  
// Output: Genre.Action

print(recommendMovie(22));  
// Output: "We recommend watching a Sci-Fi movie!"

print(recommendMovie(30));  
// Output: "We recommend watching an Action movie!"

print(recommendMovie(40));  
// Output: "We recommend watching a Comedy movie!"
```

---

## **🌟 Bonus Challenge**
1. **Group Users by Their Favorite Genre**  
   - Find each user’s most-watched genre and group users accordingly.  
2. **Filter Users Who Have Watched a Specific Genre**  
   - Implement `filterUsersByGenre(Genre genre)`, which returns a **list of users** who have watched at least one movie in the given genre.  

---

📂 **Filename:** `0x03-movie-analysis.dart`  

🚀 **Solve the challenge and push your code to GitHub!**  
</details>

---
