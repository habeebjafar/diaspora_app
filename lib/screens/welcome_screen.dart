import 'package:dias_app/constants.dart/mycolors.dart';
import 'package:dias_app/screens/components/custom_button.dart';
import 'package:dias_app/screens/loading_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        Positioned(
          left: 20,
          right: 90,
          top: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back!',
                style: TextStyle(
                    color: Color(primaryColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 34),
              ),
              const Text(
                'We are happy to have you back',
                style: TextStyle(color: Color(primaryColor)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Username',
                style: TextStyle(
                    color: Color(primaryColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              const Text(
                'Enter username, email or phone number',
                style: TextStyle(color: Color(primaryColor)),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Adeola',
                 
                
                  prefix: Icon(
                    Icons.person,
                    color: Color(primaryColor),
                    )
                ),
              ),

             const SizedBox(height: 30,),


               const Text(
                'Password',
                style: TextStyle(
                    color: Color(primaryColor),
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              const Text(
                'Enter password',
                style: TextStyle(color: Color(primaryColor)),
              ),
              TextFormField(
                
                decoration: const InputDecoration(
                  prefix: Icon(
                    Icons.lock,
                    color: Color(primaryColor),
                    ),
                  hintText: '**********',
                  // hintStyle: TextStyle(),
                 
                  
                ),
                
              )
            ],
          ),
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: 40,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  CustomButton(
                    onTap:  (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoadingScreen()
                        )

                    
                     );
                    },
                    buttonColor: const Color(primaryColor),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]))
      ],
    ));
  }
}
