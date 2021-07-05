import 'dart:io';
import 'dart:async';
int counter=0;
void main(List<String> arguments) {

  Duration duration=new Duration(seconds: 1);
  Timer timer=new Timer.periodic(duration, timeout);

  print('started : ${getTime()}');


}
void timeout(Timer timer){
  print('Timeout ${getTime()}');

  counter++;
  if(counter>=5) timer.cancel();
}

String getTime(){
  DateTime dt= new DateTime.now();
  return dt.toString();
}
