import 'dart:io';
void main(){
  stdout.write("Enter row: ");
  int row=int.parse(stdin.readLineSync()!);
  int a=1;
  int b=1;
  int count=0;
  int temp;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      if (count == 0) {
        stdout.write("$a ");
      } else {
        stdout.write("$b ");
        temp = a + b;
        a = b;
        b = temp;
      }
      count++;
    }
    print("");
  }
}