void main(){
  int i=1;
  int sum=0;
  int mul=1;
  while(i<=10){
    if(i%2==0){
      sum=sum+i;
    }else{
      mul=mul*i;
    }
    i++;
  }
  print("Sum of even numbers between 1 to 10 = $sum");
  print("Multiplication of odd numbers between 1 to 10 = $mul");
}