void main(List<String> arguments) {

  say('smeet'); // you HAVE to enter a string
  sayhi('ambu'); // you may or may not add a string.
  sayhi();
  
}
void say(String name){
  print("Hello ${name}");
}
void sayhi([String name=' ']){
  //the [] bracket indicates that name is optional
  // and if not provided it will take the default value given to it.
  print("Hello ${name}");
  print("hoo");
}
