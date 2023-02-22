import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportson/view/sportson/Home.dart';
import 'package:sportson/view/sportson/Splash.dart';
import 'package:sportson/view/sportson/Welcome.dart';

class Signup extends StatefulWidget {

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool ch1=true;
  bool ch2=false;
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xff012245),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Stack(
                children: [
                  Text(
                    'Sports on what',
                    style: GoogleFonts.teko( textStyle:Theme.of(context).textTheme.headline4,
                      fontSize: 41,
                      color: Color(0xFFDAEECD),
                    ),

                  ),

                  // Solid text as fill.
                  Text(
                    'Sports on what',
                  style: GoogleFonts.teko( textStyle:Theme.of(context).textTheme.headline4,
          fontSize: 41,
                      foreground: Paint()

                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.lightGreen[700]!,
                      // color: Colors.grey[300],

                    ),
                  ),
                  // Text(
                  //   'This is Google Fonts',
                  //   style: GoogleFonts.lato(
                  //     textStyle: Theme.of(context).textTheme.headline4,
                  //     fontSize: 48,
                  //     fontWeight: FontWeight.w700,
                  //     fontStyle: FontStyle.italic,
                  //   ),
                  // ),
                ],
              ),

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Sign up to ",style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontSize: 20,
                        ),),
                      ],
                    ),
                        Column(
                          children: [
                            Text("Sports on what",style: TextStyle(color: Color(0xFF69BE28),fontSize: 20),),
                          ],
                        )

                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextField(
                  // controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff334E69),
                    // fillColor: Colors.white,
                    hintText: ' Enter valid Name',
                    labelText: '  Name',
                    border: OutlineInputBorder(
                      // borderSide: new BorderSide(color: Colors.white),
                      // borderSide: new BorderSide(color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
              ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    // alignLabelWithHint:,
                      filled: true,
                      fillColor: Color(0xff334E69),
                      border: OutlineInputBorder( borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),),
                      labelText: '  Phone Number',
                      hintText: 'Enter valid mail id as abc@gmail.com'
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Container(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextField(
                  // style: TextStyle(backgroundColor: Colors.white),
                  // controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff334E69),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    hintText: '  Enter valid mail id as abc@gmail.com',
                    labelText: '  Email',
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Container(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextField(

                  // controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff334E69),
                    hintText: ' Enter valid Password',
                    labelText: '  Password',

                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Checkbox(
                        // checkColor: Colors.lightGreen,
                        checkColor: Colors.white,
                        value: ch1,
                        onChanged: (val)
                        {
                          setState((){
                            ch1=val!;

                          });
                        },
                      ),
                    ],
                  ),

              Column(
                children: [
                  Text("By creating an account, I agree to the Teams of ",style: TextStyle(color: Colors.white,fontSize: 14),),

                ],
              ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48.0),
                child: Row(
                  children: [
                    Text("Services and Privacy Policy", style: TextStyle( color: Colors.white,fontSize: 14),),
                  ],
                ),
              ),
              SizedBox(height: 60,),
              Container(
                height: 45,
                width: 336,
                child: ElevatedButton(
                  onLongPress: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Signup()),);
                  },
                  child: Text("Sign up",style: TextStyle(fontSize: 16),),
                  style: ElevatedButton.styleFrom(

                    minimumSize: const Size.fromHeight(50),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    primary: Color(0xff69be28),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> Home())
                    );
                  },
                ),
              ),
              SizedBox(height:15),

              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Already Have an Account?",style: TextStyle(fontSize: 17,
                          color: Color(0xffF9FBFA),
                          // letterSpacing: 5.0,
                          // wordSpacing: 15.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          // backgroundColor: Color(0xffD6EDC7)),),
                        ),),
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        // TextButton(
                        // onPressed: (){
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) =>  Signup()),);
                        // }, child: Text("Click here",style: TextStyle(fontSize: 14,color: Color(0xff438532)),)),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Home()),);
                          },
                          child: Text(

                            'Sign in',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
