// splash_screen.dart


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sopro/app_colors.dart';

import 'login_page.dart';
// Make sure the file 'login_page.dart' exists in the same directory and contains a LoginPage widget.

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
       () => Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()))
      );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
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
                        fontSize: 130,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Prime'
                      ),
                    ),
                  ), 
                SizedBox(height: 470,),
                Text("Lorem Ipsum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Prime'
                ),
                ),
                SizedBox(height: 8,),
                Text("Lorem Ipsum is a dummy text\n     used as placeholder",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                  fontFamily: 'Prime'
                ),
                )
              ],
            ),
          ),
          ),
          
        Positioned(
          top: 0,
          bottom: 580,
          left: 60,
          child: SvgPicture.asset("assets/images/line.svg",
          colorFilter: ColorFilter.mode(
            AppColors.Secondary,
            BlendMode.srcIn,
          ),
          ),
        ),
        Positioned(
          top: 300,
          bottom: 580,
          left: 34,
          child: SvgPicture.asset("assets/images/light.svg"),
        ),

        Positioned(
          top: 0,
          bottom: 640,
          left: 110,
          child: SvgPicture.asset("assets/images/line.svg",
          colorFilter: ColorFilter.mode(
            AppColors.Secondary,
            BlendMode.srcIn,
          ),
          ),
        ),
        Positioned(
          top: 200,
          bottom: 580,
          left: 84,
          child: SvgPicture.asset("assets/images/light.svg"),
        ),
      
Positioned(
  top: 150,
  bottom: 0,
  left: 0,
  right: 40,
  child: ShaderMask( 
    blendMode: BlendMode.srcIn,
    shaderCallback: (bounds) => LinearGradient(
      colors: [
        AppColors.Primary,       
        AppColors.Secondary,
       const Color(0xFFD161E5),       
        
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(bounds),
    child: SvgPicture.asset( // <--- صورة SVG كـ Child
      "assets/images/scrrr.svg",
      width: 600,  
      height: 600,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn), 
         
         ),
        ),
       ),
      ],
      
    );
  }
}