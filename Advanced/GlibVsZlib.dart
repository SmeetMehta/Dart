import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments){

  var Zlib=testCompress(zlib); //more compression less speed
  var Glib=testCompress(gzip); // less compression more speed

  print('zlib = $Zlib');
  print('glib = $Glib');


}

String Data(){
  String data='';
  for(var i=0;i< 100;i++)
  {
    data=data + 'Smeet Mehta\r\n';
  }
  return data;
}

int testCompress(var codec){
  String data=Data();
  var encoded=utf8.encode(data);
  var compressed =codec.encode(encoded);
  var decompress=codec.decode(compressed);

  print('testing ${codec.toString()}');
  print('Original ==> ${encoded.length} bytes');
  print('compressed ==> ${compressed.length} bytes');
  print('decompressed ==> ${decompress.length} bytes');

  print(" ");
  var decode=utf8.decode(decompress); // decoded data = original data
  assert(data==decode);

  return compressed.length;

}


