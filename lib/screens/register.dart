import 'package:adot/screens/newuser.dart';
import 'package:adot/services/authentication.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adot/screens/data.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: Column(
            children: [
              Image.asset("assets/register.png"),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Email",
                  suffixIcon: myfun(),
                ),
                onChanged: (String value) async {
                  setState(
                    () {
                      email.text;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Passsword (At least use 8 characters)",
                  suffixIcon: myfu(),
                ),
                onChanged: (String value2) async {
                  setState(
                    () {
                      password.text;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  signin();
                  if (email.text.length > 12 && password.text.length > 8) {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Data(),
                        ),
                      );
                    });
                  }
                },
                child: Container(
                  width: 335,
                  height: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff6c63ff),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        googlesignin();
                      },
                      child: Image.asset(
                        'assets/google.png',
                        height: 90,
                        width: 90,
                      ),
                    ),
                    Image.asset(
                      'assets/facebook.png',
                      height: 70,
                      width: 70,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewUser(),
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "I don't have an account--- Register ?",
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 4, 127, 228),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

myfun() {
  if (email.text.length > 12) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 62, 255, 69),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: const Icon(
        Icons.done,
        size: 35,
        color: Colors.white,
      ),
    );
  } else {
    Null;
  }
}

myfu() {
  if (password.text.length > 8) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 62, 255, 69),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: const Icon(
        Icons.done,
        size: 35,
        color: Colors.white,
      ),
    );
  } else {
    Null;
  }
}
