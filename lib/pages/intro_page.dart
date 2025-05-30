import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 252, 252) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const SizedBox(height: 0,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Image.asset(
                "lib/images/adidas.png"
                ),
            ),

            const SizedBox(height: 80,),
        
            //Title
            Text(
              "IMPOSSIBLE IS NOTHING",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: "sans-serif",
                letterSpacing: -3.0,

              ),
            ),

            const SizedBox(height: 30,),
            //Sub Title
            Text(
              "Premium Sneakers.\nPremium Quality.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 120,),
            //Start now button
            GestureDetector(    //On tapping this button, the user is routed to the homepage
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder:(context) => HomePage(),)
              ),
              child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900]
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}