import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row = int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    int num=i;
    for(int sp=1; sp<i; sp++){
      stdout.write("\t");
    }
    for(int j=1; j<=row-i+1; j++){
      stdout.write("$num\t");
      num++;
    }
    print("");
  }
}