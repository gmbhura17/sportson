import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportson/view/sportson/Splash.dart';

class Welcome extends StatefulWidget {

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff012245),
      body: Column(
        children: [
          SizedBox(height: 190,),
          Stack(
            children: [
              Text(
                'Sports on what',
                style: GoogleFonts.teko( textStyle:Theme.of(context).textTheme.headline4,
                  fontSize: 49,
                  color: Color(0xFFC3E3AA),

                ),
              ),
              // Solid text as fill.
              Text(
                'Sports on what',
                style: GoogleFonts.teko( textStyle:Theme.of(context).textTheme.headline4,
                  fontSize: 49,
                  foreground: Paint()

                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.lightGreen[700]!,
                  // color: Colors.grey[300],

                ),
              ),
            ],
          ),
          //EEF8E7
          //F5FAF1
          //C3E3AA
          // foreground: Paint()
          //
          //   ..style = PaintingStyle.stroke
          //   ..strokeWidth = 1
          //   ..color = Colors.lightGreen[700],
      SizedBox(height: 250),
      Padding(
        padding: const EdgeInsets.only(right: 100.0,left: 100),
        child: Text("Welcome to",style: TextStyle(fontSize: 24,
          color: Color(0xffF9FBFA),
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          // backgroundColor: Color(0xffD6EDC7)),),
        ),
        ),
      ),
          Padding(
            padding: const EdgeInsets.only(right: 100.0,left: 100),
            child: Text("Sports on What",style: TextStyle(fontSize: 24,
              color: Color(0xffF9FBFA),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              // backgroundColor: Color(0xffD6EDC7)),),
            ),
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(right: 100.0,left: 100),
            child: Text("Don't want the ads?",style: TextStyle(fontSize: 16,
              color: Color(0xffF9FBFA),
              // letterSpacing: 5.0,
              // wordSpacing: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              // backgroundColor: Color(0xffD6EDC7)),),
            ),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            child: Text("Join for #1.99/month",style: TextStyle(fontSize: 16),),
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              primary: Color(0xff69be28),
            ),
            onPressed: () {},
          ),
          SizedBox(height: 6,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Splash()),);
            },
            child: Text(

              'Continue with ads',
              style: TextStyle(
                color: Colors.green,
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}


// Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const SecondRoute()),