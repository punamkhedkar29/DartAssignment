import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row= int.parse(stdin.readLineSync()!);
  int num=1;
  for(int i=1; i<=row; i++){
    for(int j=1; j<=row; j++){
      int bin=num;
      int temp=0;
      while(bin>0){
        int rem=bin%2;
        temp=(temp*10)+rem;
        bin=bin~/2;
      }
      int rev=0;
      while(temp>0){
        int rem=temp%10;
        rev=(rev*10)+rem;
        temp=temp~/10;
      }
      stdout.write("$rev\t");
      num++;
    }
    print("");
  }
}
