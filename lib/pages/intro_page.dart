import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'lib/images/nikeLogo.png',
                    height: 240,
                  ),
                ),
                Text(
                  'Just Do It',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 24),

                Text(
                  'Brand new sneakers and custom kicks made with premium quality',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey),
                  textAlign: TextAlign.center,

                ),
                const SizedBox(height: 48),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child:Text("Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ),
                )


              ]
          )
        )
      )
    );
  }
}
