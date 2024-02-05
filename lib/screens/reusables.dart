import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localizationapp/constants/colors.dart';

class SignInSignUpButton extends StatelessWidget {
  const SignInSignUpButton({
    super.key,
    required this.size,
    required this.buttontext,
    required this.buttontype,
    required this.route,
    required this.func,
  });

  final Size size;
  final String buttontext;
  final String buttontype;
  final String route;
  final void Function()? func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                        onTap: func,
                        child: Container(
                          height: size.height * 0.08,
                          width: size.width * 0.8,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                                blurRadius: 10
                              )
                            ],
                            color:buttontype =="mainbutton"? maincolor:mainwhite,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                            buttontext,
                            style: GoogleFonts.poppins(
                                color:buttontype =="mainbutton"? mainwhite:maincolor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      );
  }
}



class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.size,
    required this.hintText,
    required this.label,
    required this.obstext,
    required this.icon,
    required this.func,
  });

  final Size size;
  final String hintText;
  final String label;
  final bool obstext;
  final IconData icon;
  final void Function(String value)? func;
  
  @override
  Widget build(BuildContext context) {
    return     Container(
    
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10,),
    
                  width: double.infinity,
    
                  child: Column(
    
                    crossAxisAlignment: CrossAxisAlignment.start,
    
                    mainAxisAlignment: MainAxisAlignment.start,
    
                    children: [
    
                  Text(label,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: maincolor),),
    
                  SizedBox(height: size.height*0.01,),
    
                  Container(
    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
    
                      color: mainwhite,
    
                      border: Border.all(color: Colors.black)),
    
                    child: Row(children: [
                      Icon(icon,size: 30,),
                      SizedBox(
                        width: size.width*0.8,
                        child: TextFormField(
                          
                        obscureText:obstext ,
                          keyboardType: TextInputType.multiline,
                        
                          onChanged: (value) => func!(value),
                                          decoration: InputDecoration(
                                          
                          
                        hintText: hintText,
                          
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                          
                                          ),
                          
                                        ),
                      )
                      ],),)
    
                ],),);
  }
}
