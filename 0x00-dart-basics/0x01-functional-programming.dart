
typedef Student = Map<String, dynamic>;

List<Student> getPassingStudents(List<Student> students) {
  return students.where((student) => student['score'] >= 60).toList();
}

double getClassAverage(List<Student> students) {
  List<int> scores = students.map((student) => student['score'] as int).toList();
  int total = scores.fold(0, (value, element) => value + element);
  return total / students.length;
}

String getTopStudent(List<Student> students) {
  Student top = students.reduce((_top, student) => _top['score'] > student['score'] ? _top : student);
  return top['name'] ?? 'Unknown';
}