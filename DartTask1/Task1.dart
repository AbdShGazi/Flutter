
//question1

void main () {
  print('Hello World!');
print("\n");


//question2
 int x=3;
 double y=3.5;
 String z="hamada";
  bool w=true;
List list1=[1,2,3];
Map map={"name":z};

print("\n");

//question3
if(x>0){
  print("num is positive");

}else if(x==0){
  print("num is zero");
}
else{
  print("num is negative");
}
print("\n");


//question4
int num1=0;
int num2=1;

for(int i=0;i<10;i++){
  print(num1);
int x=num1+num2;
  num1=num2;
  num2=x;
}
print("\n");


//question5
double SUM(double x,double y){
  return x+y;
}
print(SUM(2,3));

print("\n");


//question6
int Sentleng(String x)=>x.length;
print(Sentleng("hamada"));

print("\n");

//question7
Fun1(String name,int num){
  print(name);
  print(num);
}
Fun1("hamada",5);



//question8
String optional(String name,int num,[String? country=""]){
  return name+" "+num.toString()+" "+country.toString();
}
print(optional("hamada",5,"egypt"));
print("\n");
print(optional("hamada",5));

print("\n");

//question9
person p=person("hamada",20);
p.introduce();
print('\n');
student s=student("hamada",20,90);
s.introduce();


//question13
divFunc(5,0);

}



//question9
class person{
  String name;
  int age;
  person(this.name,this.age);
  void introduce(){
    print("my name is $name and my age is $age");
  }
}

//question10
class student extends person{
  double grade;
  student(String name,int age,this.grade):super(name,age);
  void introduce(){
    print("my name is $name and my age is $age and my grade is $grade");
  }
}

//question11
 abstract class shape{
 shape();
 void area();
}

class Circle extends shape{
  double r;
  Circle(this.r);
  void area(){
    print(3.14*r*r);
  }
}
class Rectangle extends shape{
  double x;
  double y;
  Rectangle(this.x,this.y);
  void area(){
    print(x*y);
  }
}
//question12
abstract class derivable{
  void drive();
}

class car implements derivable{
  void drive(){
    print("driving");
  }
}

//question13
divFunc(int x,int y){
 try{
    print(x~/y);
  }catch(e){
    print(e);
 }
 
}

divFunc2(int x,int y){
 if(y==0){
   throw Exception("can't divide by zero");
 }
 else{
   print(x~/y);
 }
 
}


//question14

