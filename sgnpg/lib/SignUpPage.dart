import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  final style = const TextStyle(
    // height: 31,
    letterSpacing: 1.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 28,
    fontFamily: 'Spartan',
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/10377112/pexels-photo-10377112.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
              fit: BoxFit.cover,
            ),
            // gradient: LinearGradient(
            //   colors: [
            //     Color.fromARGB(255, 54, 113, 161),
            //     Color.fromARGB(255, 24, 77, 27),
            //   ],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  height: 64,
                  width: 184,
                  // alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      color: Colors.blue,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(
                          40,
                        ),
                        bottomLeft: Radius.circular(40),
                      )),
                  child: const Center(
                    child: Text.rich(
                      TextSpan(
                          text: 'Acti',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Vista',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            )
                          ]),
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontFamily: 'Spartan'),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 5),
              Text(
                '  Welcome',
                style: style,
              ),
              const SizedBox(height: 20),
              Text(
                '  Your Name:',
                style: style,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  // cursorHeight: 15,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Loram Ipsum',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '  Your Email:',
                style: style,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 10, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'loremIpsum@email.com',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '  Your Password:',
                style: style,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 10, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 15, 0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  // color: Colors.purple,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Sign Up',
                    style: style,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Text(
                      'Tap Here ',
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    Text(
                      'if you already have an account',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
