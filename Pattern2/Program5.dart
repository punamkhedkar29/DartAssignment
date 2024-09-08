import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=(i+i)-1;
    for(int j=1; j<=row; j++){
      stdout.write("$num ");
      num+=2;
    }
    print("");
  }
}