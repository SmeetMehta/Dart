class democlass{
   String? name1;
   int? age1=0;

   democlass(String? name,int?age){
     name1=name;
     age1=age;
   }
   String? get name => name1;
   //getter ==>this gets the value from main function.
   void set name(String? value) => name1=value;
   //setter ==> this sets the new value added from the main class.
   int? get age => age1;
   void set age(int? value) => age1=(value!*2);

}
