import 'dart:io';

void main() {
  int age;
  print("enter your age");
  String? inp = stdin.readLineSync();
  try {
    age = int.parse(inp!);
    print("you have ${100 - age} years left until you're 100");
  } catch (e) {
    print("invalid input enter a valid age");
  }
}
