enum colors{red,green,blue} // has to be declared outside of main
void main(List<String> arguments) {
  print(colors);
  print(colors.values); // 3 objects of enum are created

  List test=[1,2,3,4];
  print("length =${test.length}"); // shows length
  print("test[0] =${test[0]}"); // just similar to arrays in java
  print("element at index 3 =${test.elementAt(3)}"); // gives element at specific index

  List things = List.filled(0, null, growable: true); //length in declared as 0
  List things1 = List.filled(5, null, growable: true); // length is declared as 5

  // the way to declare nullable list.
  // The 1st argument is current length, 2nd is the variable to fill the empty space with.
  // 3rd is growable boolean. it's true there for the list size can grow.
  things.add(1);
  things.add("cat");
  things.add(true);
  things.add(1);

  print("Things before remove = ${things}");
  things.remove(1); // this removd the 1st index of 1
  print("Things after remove= ${things}");

  things1.add("notnull");
  // added to things1 it will be added after 5 "null".
  //as in the definition the length is mentioned as 5
  // and the default is mentioned as hull.

  print("Things1 before remove= ${things1}");
  things1.remove(null); //removes 1 null value
  print("Things1 after remove= ${things1}");

   List<int> number=new List.filled(0,0, growable: true);
   // list created for integer only.
   number.add(1);
   number.add(2);
   number.add(3);
   print(number);

}

