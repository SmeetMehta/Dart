import 'dart:io';
void main(List<String> arguments) {
  print('OS: ${Platform.operatingSystem} ');

  if(Platform.isAndroid){
    print('run Android code');
  }
  else if(Platform.isWindows){
    print('run windows code');
    print('Path - ${Platform.script.path}');
  }
}
