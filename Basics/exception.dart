import 'dart:io';
void main(List<String> arguments) {
   try{
     var age= asked();
     if(age<18) {
       throw Exception('too young');
     }
     if(age>99) {
       throw Exception('too old');
     }
     print("you may continue");
   }
   catch(e){
     print('the was an error ==> $e');
   }
   finally{
    print('good bye');
   }
}
int asked(){
  print('Enter age');
  var age=stdin.readByteSync();
  return age;
}
