void main(){
  int sum=0;
  for(int i = 1; i<=120; i++){
    if(i>=20 && i<=120){
      if(i%2==1){
        sum=sum+i;
      }
    }
  }
  print(sum);
}