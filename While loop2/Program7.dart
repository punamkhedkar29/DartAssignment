void main(){
  int num=942111423;
  int count=0;
  while(num>0){
    int num1=num%10;
    if(num1%2!=0){
      count++;
    }
    num=num~/10;
  }
  print("count of digits = $count");
}