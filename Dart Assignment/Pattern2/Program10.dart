import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    String num2="a";
    for(int j=1; j<=row; j++){
      if(i%2==0){
        stdout.write("$num2 ");
      }else{
      stdout.write("$i ");
      }
    }
    print("");
  }
}