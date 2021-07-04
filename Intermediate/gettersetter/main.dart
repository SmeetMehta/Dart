import 'dart:io';
import 'democlass.dart';
void main(List<String> arguments) {

     democlass student=democlass('smeet', 22);
     student.name='ambu';
     print(student.name);
     print(student.age);
     student.age=10;
     print(student.age);

}


