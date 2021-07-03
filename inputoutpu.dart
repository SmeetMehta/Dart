import 'dart:io';  // input output
import 'dart:async';
void main(List<String> arguments) {
  stdout.write("what is your name?\r\nhello world\n");
  stdout.write("enter name here\n");
  // \r is hard return
  // \n is used for next line
  String? name = stdin.readLineSync(); // String is non-nullable BUT String? is nullable
  print(name.runtimeType);
  bool? me ;// same as String? bool? is also nullable while bool is not
  print(me);

  name!.isEmpty? stderr.write("name is empty"):stdout.write(name);
  //console suggested "name!" instead of "name".
  //the reason written there was that as we declared "name" as "String?" it could have a null value.
  //but isEmpty function never returns null value.
}

