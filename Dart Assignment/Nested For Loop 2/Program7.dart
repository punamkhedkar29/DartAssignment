import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=row-i+1;;
    for(int j=1; j<=i; j++){
      int temp=num;
      temp=temp*j;
      stdout.write("$temp ");
    }
    print("");
  }
}