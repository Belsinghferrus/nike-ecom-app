import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("lib/images/logo.png",
                height: 240,
                ),
              ),
              SizedBox(height: 48,),
              //title
              Text("Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              SizedBox(height: 24,),

              //tagline
              Text("Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey
              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24,),

              //start now
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text("Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
