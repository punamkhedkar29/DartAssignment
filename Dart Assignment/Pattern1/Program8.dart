import 'dart:io';
void main(){
  stdout.write("Enter number of rows: ");
  int row= int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=i;
    for(int j=1; j<=row; j++){
      stdout.write("$num ");
      num++;
    }
    print("");
  }
}