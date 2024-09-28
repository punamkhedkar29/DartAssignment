import 'dart:io';
void main(){
  stdout.write("Enter rows: ");
  int row=int.parse(stdin.readLineSync()!);
  for(int i=1; i<=row; i++){
    for(int sp=1; sp<=i;sp++){
      stdout.write("\t");
    }
    for(int j=i; j<row;j++){
      stdout.write("1\t");
    }
    for(int j=i; j<=row; j++){
      stdout.write("1\t");
    }

    print("");
  }
}

