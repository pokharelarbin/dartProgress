import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/7721926/pexels-photo-7721926.jpeg?cs=srgb&dl=pexels-matteus-silva-7721926.jpg&fm=jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Container(
                  // alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          12,
                        ),
                        bottomLeft: Radius.circular(12),
                      )),
                  child: Text(
                    ' ActiVista ',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '  Welcome',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Text(
                '  Your Name:',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  // cursorHeight: 15,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Loram Ipsum',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '  Your Email:',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'loremIpsum@email.com',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '  Your Password:',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  // color: Colors.purple,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '     Tap Here ',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'if you already have an account',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
