import 'dart:io';

class normalPayroll {
  int workHour = 8;
  int rate = 200;
}

class overtimePayroll extends normalPayroll {
  int? _hour;
  int? get hour {
    return _hour;
  }

  set setHour(hour) {
    if (hour > 8) {
      this._hour = hour - workHour;
    }
  }

  int rate = 300;
}

void main() {
  var payment;
  var a = new normalPayroll();
  print('Enter the working hour');
  var c = new overtimePayroll();
  int? hour = int.parse(stdin.readLineSync()!);
  c.setHour = hour;
  if (hour > a.workHour) {
    payment = a.workHour * a.rate + c.hour! * c.rate;
  } else {
    payment = a.workHour * a.rate;
  }
  print('The overtime hour is ${c.hour}');
  print("Total Payment is ${payment}");
}
