void main(List<String> arguments) {
  int num=12;

  bool hi=true;  // boolean.--> not nullable
  print('num= ${num*num}');
  print('hi===${hi}');

  var number=int.parse('12.09',onError: (source) => 0); // var  type to int
  print('err=${number}');

  String me='smeet mehta';      // String
  print(me);

  print(me.substring(me.indexOf('e',4))); //substring and index of
  print(me.runtimeType);

  List parts=me.split(' ');  // list
  print(parts);

  const String hey="hello";   // const is equivalent to static
  print(hey);

}
