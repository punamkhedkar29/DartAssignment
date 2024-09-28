import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row= int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=row-i+1;
    int temp=num;
    for(int j=1; j<=row; j++){
      stdout.write("$num ");
      if(j%2!=0){
        int temp1=i+i-1;
        num=num+temp1;
      }else{
        int temp2=temp+temp-1;
        num=num+temp2;
      }
    }
    print("");
  }
}