import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';

void main(List<String> arguments) async{

   var serverSocket= await ServerSocket.bind('127.0.0.1', 3000);
   print('Listening');
   
   await for (var socket in serverSocket){
      socket.listen((var values) {
         print('${socket.remoteAddress} : ${socket.remotePort} = ${utf8.decode(values)}');
      });
   }
}
