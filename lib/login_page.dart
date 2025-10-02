import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sopro/app_colors.dart';
import 'package:sopro/text_field.dart';
import 'package:ionicons/ionicons.dart';
// Uncomment the following line if you have the ionicons package in your pubspec.yaml

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();


    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 190,
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            AppColors.Primary,
                            AppColors.Secondary,
                           const Color(0xFFD161E5)
                           ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcIn,
                        child: Text(
                          "LOGO",
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Prime'
                          ),
                        ),
                      ),
              SizedBox(height: 10,),
              Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
              SizedBox(height: 10,),
              Text(
                    "Log in to existing LOGO account",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
          
              SizedBox(height: 28,),
          
              CustomTextField(
                controller: email,
                hint: "User Name",
                icon: Icons.person_outline_outlined,
                ),
              SizedBox(height: 25,),  
              CustomTextField(
                controller: email,
                hint: "Passward",
                icon: Icons.lock_outlined,
                ),
              SizedBox(height: 8),
              Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              )
              ),
               
              SizedBox(height: 45),

              Center(
                child: Container(
                  width: 200,
                  height: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 212, 208, 208),
                        blurRadius: 11,
                        spreadRadius: 5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors:[
                        AppColors.Primary,
                        AppColors.Secondary,
                        const Color.fromARGB(255, 140, 37, 158)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                      ),
                  ),
                  child: Text(
                    "Log In",
                    style:TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ) ,
                    ),
                ),
                
              ),
              SizedBox(height: 35,),
                Text(
                    "Or sign in with",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,color: Colors.blue.shade900,size: 40,),
                    SizedBox(width: 20,),
                    Icon(Ionicons.logo_google,color: Colors.red.shade800,size: 40,),
                    SizedBox(width: 20,),
                    Icon(Ionicons.logo_apple,size: 40,),
                  ],
                ),
              
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                    ),  
                  ],
                ),  
                ],
              ),
            ),
          ),
        ),

        Positioned(
          top: 0,
          left: 130,
          child: SvgPicture.asset("assets/images/box2.svg")),

        Positioned(
          top: 0,
          right: 0,
          child: SvgPicture.asset("assets/images/box1.svg")),

        
      ],
    );
  }
}