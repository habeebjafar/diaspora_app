import 'package:dias_app/constants.dart/mycolors.dart';
import 'package:dias_app/screens/components/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
        ),
       const  Positioned(
        right: 30,
        top: 50,
          child:  Text(
            'Sign Up',
            style: TextStyle(
              color: Color(primaryColor),
              fontWeight: FontWeight.bold
            ),
            )
        ),
       const  Positioned(
        left: 20,
        right: 90,
        top: 130,
          child: Text(
             'Connecting people of the same nationality in the same location',
             style: TextStyle(
              color: Color(primaryColor),
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
             ),
        ),

        Positioned(
          right: 0,
          left: 0,
          bottom: 40,
          child:   Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  const CustomButton(
                    buttonColor: Color(primaryColor),
                    child: Text(
                      'Continue with Apple ID',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                 const  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    onTap: (){
                      debugPrint('hello world');
                    },
                    buttonColor:const Color(scondaryBtnColor),
                    child: const  Text(
                      'Continue with Google',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()
                        )

                    
                     );
                  },
                   child: const Text(
                      'Or Sign in with e-mail address',
                      style: TextStyle(
                        color: Color(primaryColor),
                      ),
                      textAlign: TextAlign.center,
                    ),
                 ),

                ]
                )
        )
      ],
    )
    );
  }
}
