//dart conditional operator

void main(){
	int a = 5;
	int b = 4;
	int x = null;
	int y = 8;
	var res = a>b ? "Greater":"Smaller";
	var res1 = x ?? y;
	print(res);
	//if condition
	if(a>4){
		print(a);
	}

	//if-else condition
	if (a>4){
		print(a);
	}
	else{
		print(b);
	}

	//elseif ladder
	if(a>5){
		print(a+b);
	}
	else if (a<2){
		print(b-a);
	}
	else{
		print(a);
	}

	//if else and logical operator
	if (a>4) && (a>2) {
		print (a+b);
	}
}

