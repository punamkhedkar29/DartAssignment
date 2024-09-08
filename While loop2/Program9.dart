void main(){
  int num=942111423;
  int temp=0;
  while(num>0){
    int num1=num%10;
    temp=temp*10+num1;
    num=num~/10;
  }
  print(temp);
}