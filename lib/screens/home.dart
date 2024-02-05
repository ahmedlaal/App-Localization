import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localizationapp/screens/reusables.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("App Localization"),
      ),
      body: Center(
        child: SafeArea(child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: size.height*0.02,
              ),
                 Text(
                  "Sign Up with Below Credentials",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                    SizedBox(
                  height: size.height * 0.05,
                ),
                 TextFieldWidget(
                  size: size,
                  hintText: "Name",
                  label: "Enter Name",
                  obstext: false,
                  icon: Icons.person,
                  func: (value) {
                    
                  },
                ),
                   TextFieldWidget(
                  size: size,
                  hintText: "Enter Email",
                  label: "Email",
                  obstext: false,
                  icon: Icons.person,
                  func: (value) {
                   
                  },
                ),
                TextFieldWidget(
                  size: size,
                  hintText: "Enter Password",
                  label: "Password",
                  obstext: true,
                  icon: Icons.lock_outline_rounded,
                  func: (value) {
                    
                  },
                ),
                TextFieldWidget(
                  size: size,
                  hintText: "Confirm Password",
                  label: "Password",
                  obstext: true,
                  icon: Icons.lock_outline_rounded,
                  func: (value) {
                    
                  },
                ),
          
                SizedBox(
                height: size.height*0.02,
              ),
                SignInSignUpButton(
                  size: size,
                  buttontext: "Sign Up",
                  buttontype: 'mainbutton',
                  route: "Signup",
                  func: () {
                  },
                ),
               
                 TextButton(
                    onPressed: () {Navigator.pushNamed(context, "Signin");},
                    child: Text(
                      "Already Have an account",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    )),
            ],),
          )),
        
    ));
  }
}