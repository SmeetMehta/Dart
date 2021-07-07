import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main(List<String> arguments){
    String data='';
    for(var i=0;i< 100;i++)
      {
        data=data + 'Smeet Mehta\r\n';
      }
    
    var encoded= utf8.encode(data); //encoded data

    var compressed =gzip.encode(encoded); // compressed data

    var decompress=gzip.decode(compressed); //decompressed data

    print('Original ==> ${encoded.length} bytes');
    print('compressed ==> ${compressed.length} bytes');
    print('decompressed ==> ${decompress.length} bytes');

    var decode=utf8.decode(decompress); // decoded data = original data
    assert(data==decode);

}



