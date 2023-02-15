import 'package:dias_app/constants.dart/mycolors.dart';
import 'package:flutter/material.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

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
       
         Positioned(
        left: 0,
        right: 0,
        top:250,
        bottom:250,
          child:  Center(
            
            child: Column(
              children:  [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 12,
                    width: 12,
                    color: const Color(primaryColor),
                    
                  ),
                ),
                const SizedBox(height: 60,),
                const Text(
                   'Almost there...',
                   style: TextStyle(
                    color: Color(primaryColor),
                    // fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                   ),
              ],
            ),
          ),
        ),

  
      ],
    )
    );
  }
}
