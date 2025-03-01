import 'dart:io';
import 'dart:math';

late String name;

void main(List<String> args) {
  // for (int i = 0; i < args.length; i++) {
  //   print(args[i]);
  // }
  // print(args);
  print(max(12, 5));

  List<String> students = ['obimba', "smart"];

  var names = <String>[];
  names.add("Smart");

  print(names);
  var dnfs = List.filled(10, 'null');
  print(dnfs);
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}



