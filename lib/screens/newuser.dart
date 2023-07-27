import 'package:adot/screens/home.dart';
import 'package:adot/services/authentication.dart';
import 'package:flutter/material.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

TextEditingController firstname = TextEditingController();
TextEditingController choices = TextEditingController();
TextEditingController password2 = TextEditingController();
TextEditingController email2 = TextEditingController();
TextEditingController lastname = TextEditingController();
String name = '';
String choose = '';

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/user.png",
                      ),
                      //!firebase image add database add
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_a_photo_outlined,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    firstname.text;
                  });
                },
                controller: firstname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'First Name',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: lastname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Last Name',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (str) {
                  setState(() {
                    email2.text;
                  });
                },
                controller: email2,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Email',
                  suffixIcon: correct(),
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (st) {
                  setState(
                    () {
                      password2.text;
                    },
                  );
                },
                controller: password2,
                obscureText: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Password',
                  suffixIcon: myf(),
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  createuser();
                  setState(
                    () {
                      choose = firstname.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 314,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xff6c63ff),
                  ),
                  child: const Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

correct() {
  if (email2.text.length > 12) {
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

myf() {
  if (password2.text.length > 8) {
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
