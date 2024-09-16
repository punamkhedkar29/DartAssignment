import 'dart:io';
void main(){
  stdout.write("Enter rows: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    for(int sp=i; sp<=row;sp++){
      stdout.write("\t");
    }
    for(int j=1; j<i;j++){
      stdout.write("*\t");
    }
    for(int j=1; j<=i;j++){
      stdout.write("*\t");
    }

    print("");
  }
}

