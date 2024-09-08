import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    for(int j=1; j<=row; j++){
      if(j==row){
      stdout.write("${i+1} ");
      }else{
        stdout.write("$i ");
      }
    }
    print("");
  }
}