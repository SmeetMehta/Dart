import 'dart:io';
import 'dart:async';

void main(List<String> arguments) async{ // making main async

  print("Starting");

  File file=await appendFile();
  //as the "Future" is async await will wait for the appendFile to run
  // and once executed the await will run

  print('Append to file ${file.path}');
  print('Done');

}

Future<File> appendFile(){
  File file=File(Directory.current.path + '/test.txt');
  // to create the file in the current directory
  DateTime now = DateTime.now();
  return file.writeAsString(now.toString() + '\r\n',mode: FileMode.append);

}
