import 'dart:io';
void main(){
  print("Number of rows: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int number = 14+i-1;
    for(int j=1; j<=row; j++){
      stdout.write("$number ");
    }
    print("");
  }
}