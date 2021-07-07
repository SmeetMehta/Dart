import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {
   String path=Directory.current.path +"/test.text";
   print('Appending to $path');

   File file=File(path);
   Future<RandomAccessFile> f=file.open(mode: FileMode.append);
   f.then((RandomAccessFile raf){
     print('file had been opened');
     raf.writeString('hello smeet\n').then((value){
       print('File has been appended');

     }).catchError(() => print('Error')).whenComplete(() => raf.close());
   });
print('****** The end');
}


