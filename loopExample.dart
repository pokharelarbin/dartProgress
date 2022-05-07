//example1
for (int i = 0; i < 5; i++) {
    print('line $i is printed');
}

//example2
var obj = [ 1, 2, 3, 4, 5 ];
    for (int i in obj) {
        print(i);
}

//example3
var obj = [1,2,3,4,5];
  obj.forEach((var num)=> print(num));

//example4
var obj = 4;
int i = 1;
while (i <= obj) {
      print('line $i is printed');
      i++;
}

//example5
var obj = 5;
int i=1;
do{
   print('line $i is printed');
   i++;
}while(i<=obj);

//example6
int count = 1 ;
while(count<=10){
	print('line $i is printed');
	count++;
	if (count==5) {
		break;
	}
}
print('points outside of while loop');

//example7
int count =0;
do{
   count++;
   if (count==5){
	print('Line $count is skipped');
   	continue;
   }
   print('Inside loop $count');
}while(count<=10);
print('points after the do while loop')'
   
