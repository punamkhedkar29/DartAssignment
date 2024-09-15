import 'dart:io';
void main(){
  stdout.write("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int flag=0;
  while(num>0){
    int rem=num%10;
    if(rem==0){
      flag=1;
    }
    num=num~/10;
  }
  if(flag==1){
    print("$temp is a Duck number");
  }else{
    print("$temp is not a Duck number");
  }
}