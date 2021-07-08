import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) async{

   var socket= await Socket.connect('127.0.0.1', 4000);
   print('Connected');
   socket.write('hello smeet');
   print('Sent, now closing');
   
   await socket.close();
   print('Closed');
   exit(0);
}
