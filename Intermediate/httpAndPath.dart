import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;
// add the dependency in the pubspec.yaml file to install the package
import 'dart:io';
void main(List<String> arguments) {
      Uri url = new Uri.http("www.voidrealms.com","");
      // DIFFERENT FROM THE VID LECTURE
      // this is the way to make a Uri object in the latest update

      String path=p.join('directory','filename.txt');
      print(path);  // prints the path

      http.get(url).then((response) {
            print("Response status code: ${response.statusCode}"); //200 means OK
            print("Response body: ${response.body}"); // body of the webpage
      });

    }

