import 'package:flutter/material.dart';
import 'package:adot/screens/newuser.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adot/widgets/drawer.dart';

class NewDrawer extends StatelessWidget {
  const NewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.greenAccent),
            child: Column(
              children: [
                const Text(
                  "Your Profile",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Hi , $choose",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text("Welcome"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text("User"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text("Feedback"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Log Out"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
