import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localizationapp/Language/language_list.dart';
import 'package:localizationapp/screens/reusables.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.homePage),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: DropdownButton(
                  items: Language.languageList()
                      .map<DropdownMenuItem<Language>>(
                          (e) => DropdownMenuItem<Language>(
                              value: e,
                              child: Row(
                                children: [],
                              )))
                      .toList(),
                  onChanged: (Language? language) async {
                    // Locale _locale= await setLocal
                  }),
            )
          ],
        ),
        body: Center(
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  AppLocalizations.of(context)!.signupText,
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                TextFieldWidget(
                  size: size,
                  hintText: AppLocalizations.of(context)!.name,
                  label: AppLocalizations.of(context)!.nameHint,
                  obstext: false,
                  icon: Icons.person,
                  func: (value) {},
                ),
                TextFieldWidget(
                  size: size,
                  hintText: AppLocalizations.of(context)!.emailHint,
                  label: AppLocalizations.of(context)!.email,
                  obstext: false,
                  icon: Icons.person,
                  func: (value) {},
                ),
                TextFieldWidget(
                  size: size,
                  hintText: AppLocalizations.of(context)!.entepass,
                  label: AppLocalizations.of(context)!.password,
                  obstext: true,
                  icon: Icons.lock_outline_rounded,
                  func: (value) {},
                ),
                TextFieldWidget(
                  size: size,
                  hintText: AppLocalizations.of(context)!.confirmpass,
                  label: AppLocalizations.of(context)!.password,
                  obstext: true,
                  icon: Icons.lock_outline_rounded,
                  func: (value) {},
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SignInSignUpButton(
                  size: size,
                  buttontext: AppLocalizations.of(context)!.signup,
                  buttontype: 'mainbutton',
                  route: "Signup",
                  func: () {},
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "Signin");
                    },
                    child: Text(
                      AppLocalizations.of(context)!.alreadyAccount,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          )),
        ));
  }
}
