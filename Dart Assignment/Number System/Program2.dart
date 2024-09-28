import 'dart:io';
void main(){
  stdout.write("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  int sum=0;
  for(int i=1; i<=num; i++){
    if(num%i==0){
      sum=sum+i;
    }
  }
  int temp=num+1;
  if(temp==sum){
    print("$num is a Prime number");
  }else{
    print("$num is not a Prime number");
  }
}