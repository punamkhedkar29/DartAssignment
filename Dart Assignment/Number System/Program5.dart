import 'dart:io';
void main(){
  stdout.write("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int rev=0;
  while(num>0){
    int rem=num%10;
    rev=(rev*10)+rem;
    num=num~/10;
  }
  if(temp==rev){
    print("$temp is a Palindrome number");
  }else{
    print("$temp is not a Palindrome number");
  }
}