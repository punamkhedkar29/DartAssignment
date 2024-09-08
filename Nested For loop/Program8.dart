import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  int num=0;
  for(int i=1; i<=row; i++){
    int temp=num+i;
    num=temp;
    for(int j=1; j<=i; j++){
      stdout.write("$temp ");
      temp++;
    }
    print("");
  }
}
