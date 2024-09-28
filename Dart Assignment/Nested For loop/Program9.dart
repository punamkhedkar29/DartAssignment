import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=1+i-1;
    for(int j=1; j<=i; j++){
      if(i%2==0){
        if(j%2==0){
          stdout.write("${num*num} ");
          num++;
        }else{
          stdout.write("${num*num*num} ");
          num++;
        }
      }else{
        if(j%2==0){
          stdout.write("${num*num} ");
          num++;
        }else{
          stdout.write("${num*num*num} ");
          num++;
        }
      }
    }
    print("");
  }
}