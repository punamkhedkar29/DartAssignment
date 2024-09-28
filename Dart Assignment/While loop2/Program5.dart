void main(){
  int num=6;
  int temp=num;
  int mul=1;
  while(temp>=1){
    mul*=temp;
    temp--;
  }
  print("Factorial $num is $mul");
}