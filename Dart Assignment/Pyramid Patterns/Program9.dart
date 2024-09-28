import 'dart:io';
void main(){
  stdout.write("Enter rows: ");
  int row=int.parse(stdin.readLineSync()!);
  int num=1;
  for(int i=1; i<=row; i++){
    for(int sp=1; sp<=i;sp++){
      stdout.write("\t");
    }
    for(int j=i; j<row;j++){
      stdout.write("$num\t");
      num++;
    }
    for(int j=i; j<=row; j++){
      stdout.write("$num\t");
      num++;
    }

    print("");
  }
}

