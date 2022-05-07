void main(){
	int a =1;
	int b = "str";
	switch(a) {
	  case 1: {
		switch (b) {
			case 'str' : {	
				print("Value of nested switch");
			} 
		}
	  } break;
	  case 2: {
		print("Value second case");
	  } break;
	  default:{
		print("This is default case"):
	  } break;
	}
}
