import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  final style = const TextStyle(
    // height: 31,
    letterSpacing: 1.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 15,
    fontFamily: 'Spartan',
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Opacity(
            opacity: 0.75,
            child: Container(
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
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                    child: Container(
                      height: 64,
                      width: 184,
                      padding: const EdgeInsets.fromLTRB(24, 14, 24, 14),
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
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
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
                  const Text(
                    '  Welcome',
                    style: TextStyle(
                      // height: 31,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Spartan',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Your Name:',
                      style: style,
                    ),
                  ),
                  Container(
                    width: 336,
                    height: 43.75,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: const TextField(
                      // cursorHeight: 15,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Loram Ipsum',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Your Email:',
                      style: style,
                    ),
                  ),
                  Container(
                    width: 336,
                    height: 43.75,
                    padding: const EdgeInsets.fromLTRB(20, 10, 15, 0),
                    child: const TextField(
                      // textAlign: TextAlign.justify,
                      // textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(),
                        hintText: 'loremIpsum@email.com',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Your Password:',
                      style: style,
                    ),
                  ),
                  Container(
                    width: 327,
                    height: 48,
                    padding: const EdgeInsets.fromLTRB(20, 10, 15, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
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
                      width: 327,
                      height: 47,
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Sign Up',
                          style: style,
                        ),
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
                          style: TextStyle(
                              fontFamily: 'Spartan',
                              fontSize: 15,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'if you already have an account',
                          style: TextStyle(
                              fontFamily: 'Spartan',
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
