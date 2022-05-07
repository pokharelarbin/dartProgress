import 'dart:io'
void main(){
	print("Enter your name ?");
	String? name = stdin.readLineync();
	stdout.write("Hello $name");
}
//taking integer value as input
int? num = Int.parse(stdin.readLineSync());
