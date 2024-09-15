import 'dart:io';
void main(){
  stdout.write("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  int sum=0;
  
  int temp=num;
  while(num>0){
    int fact=1;
    int rem=num%10;
    for(int i=rem; i>=1; i--){
      fact=fact*i;
    }
    sum=sum+fact;
    num=num~/10;
  }
  if(temp==sum){
    print("$temp is a Strong number");
  }else{
    print("$temp is not a Strong number");
  }
}