import 'dart:io';
void main(){
  print("Number of rows: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    for(int j=1; j<=row; j++){
      stdout.write("*# ");
    }
    print("");
  }
}