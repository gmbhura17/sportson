import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sports extends StatefulWidget {

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF0F3F5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                // side: BorderSide(
                //   color: Colors.black,
                // ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child:  Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.view_headline_sharp,color: Colors.white,),
                      iconSize: 30.0,
                    ),
                    Text("My Profile",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ],
                ),
              ),
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff012245),
                // border: Border(
                //   left: BorderSide(
                //     color: Colors.black,
                //     width: 3,
                //   ),
                // ),
              ),
            ),
            ),

                                                  // ---------------------- card 2(on top) ----------------
             Card(
               elevation: 1,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
               child:  Container(
               height: 180,
               width: 300,

               child: Column(
                 children: [
                   SizedBox(height: 15),
                   GestureDetector(
                     onTap: () {
                       print("Image Click");
                     },
                     child: Padding(
                       padding: const EdgeInsets.only(left: 250.0),
                       child: Image.asset(
                         "img/Ellipse 951.png",
                         width: 40,
                       ),
                     ),
                   ),
                   SizedBox(height:30 ,),
                   Text("Will Smith",style: GoogleFonts.poppins( textStyle:Theme.of(context).textTheme.headline4,
                       fontSize: 16,
                       fontStyle: FontStyle.normal ,
                       foreground: Paint()

                     // ..style = PaintingStyle.stroke
                     // ..strokeWidth = 1
                     // ..color = Colors.lightGreen[700],
                     // color: Colors.grey[300],

                   ),),
                   SizedBox(height:8 ,),
                   Text("Ottawa, Canada",style: GoogleFonts.poppins( textStyle:Theme.of(context).textTheme.headline4,
                     fontSize: 14,
                     foreground: Paint()

                       // ..style = PaintingStyle.stroke
                       // ..strokeWidth = 1
                       // ..color = Colors.lightGreen[700],
                     // color: Colors.grey[300],

                   ),),
                 ],
               ),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white,
               ),
             ),
             ),
            ]
          ),

            // Stack Vs code
            //-------------------------------------------------------------------------------------------
            // Stack(
            //   clipBehavior: Clip.none,
            //   alignment: AlignmentDirectional.topCenter,
            //   children: [
            //     Container(
            //       height: 240.0,
            //       padding: const EdgeInsets.only(
            //           top: 20.0, right: 20.0, left: 20.0, bottom: 28.0),
            //       decoration: BoxDecoration(
            //           color: (themeChange.isdark)
            //               ? StyleResources.BlueColorDark
            //               : StyleResources.BlueColor,
            //           borderRadius: const BorderRadius.only(
            //               bottomLeft: Radius.circular(25.0),
            //               bottomRight: Radius.circular(25.0))),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           SizedBox(height: 40.0,),
            //           Row(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Row(
            //                 children: [
            //                   SvgPicture.asset(
            //                     "img/burger.svg",
            //                     height: 30.0,
            //                     width: 30.0,
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsets.only(left: 15.0),
            //                     child: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         (profileobj!=null)?Text("Profile".toString(),style: TextStyle(
            //                             color: (themeChange.isdark)?StyleResources.WhiteColor:StyleResources.WhiteColor,
            //                             fontSize: 16.0,
            //                             fontFamily: 'PoppinsSemiBold'),
            //                         ):LoadingAnimationWidget.prograssiveDots(
            //                           color: Colors.white,
            //                           size: 50,
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //           const SizedBox(
            //             height: 18.0,
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       height: 150.0,
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //           color: (themeChange.isdark)
            //               ? StyleResources.BlackColor
            //               : StyleResources.WhiteColor,
            //           borderRadius: BorderRadius.circular(10.0)),
            //       alignment: Alignment.topRight,
            //       margin:
            //       EdgeInsets.only(top: 140.0, right: 20.0, left: 20.0),
            //       child: Container(
            //         width: 40,
            //         height: 40,
            //         margin: EdgeInsets.all(20.0),
            //         padding: EdgeInsets.all(12.0),
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           border: Border.all(
            //               color: (themeChange.isdark)
            //                   ? StyleResources.EditIconBackgroundDark
            //                   : StyleResources.EditIconBackgroundLight,
            //               width: 1.0),
            //           color: (themeChange.isdark)
            //               ? StyleResources.EditIconBackgroundDark
            //               : StyleResources.EditIconBackgroundLight,
            //         ),
            //         child: SvgPicture.asset(
            //           "img/ic-edit.svg",
            //           height: 30.0,
            //           width: 30.0,
            //           color: (themeChange.isdark)
            //               ? StyleResources.EditIconDark
            //               : StyleResources.EditIconLight,
            //         ),
            //       ),
            //     ),
            //     Positioned(
            //       top: 80,
            //       child: Column(
            //         children: [
            //           Container(
            //             height: 112,
            //             width: 112,
            //             decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               border: Border.all(
            //                   color: (themeChange.isdark)
            //                       ? StyleResources.BlackColor
            //                       : StyleResources.WhiteColor,
            //                   width: 3.0),
            //               image: const DecorationImage(
            //                   image: AssetImage(
            //                     'img/person.png',
            //                   )),
            //               color: Colors.deepPurple,
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 8.0,
            //           ),
            //           (profileobj!=null)?Text(
            //               profileobj.name,
            //               style: TextStyle(
            //                 fontFamily: 'PoppinsRegular',
            //                 fontSize: 14.0,
            //                 color: (themeChange.isdark)
            //                     ? StyleResources
            //                     .HeadingColorDark
            //                     : StyleResources
            //                     .HeadingColorLight,
            //               )
            //           ):LoadingAnimationWidget.prograssiveDots(
            //             color: Colors.white,
            //           ),
            //           const SizedBox(
            //             height: 8.0,
            //           ),
            //           (profileobj!=null)?Text(
            //               profileobj.location,
            //               style: TextStyle(
            //                 fontFamily: 'PoppinsRegular',
            //                 fontSize: 14.0,
            //                 color: (themeChange.isdark)
            //                     ? StyleResources
            //                     .HeadingColorDark
            //                     : StyleResources
            //                     .HeadingColorLight,
            //               )
            //           ):LoadingAnimationWidget.prograssiveDots(
            //             color: Colors.white,
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // ),

            Expanded(
              child: ListView(
                children: [
                Column(
                  children: [
                    //                                              // ---------------- Personal Info T / C ---------------
                    Padding(
                      padding: const EdgeInsets.only(right: 245.0,bottom: 10),
                      child: Text("Personal Info",style: GoogleFonts.poppins( textStyle:Theme.of(context).textTheme.headline4,
                          fontSize: 16,
                          foreground: Paint()
                      ),),
                    ),

                    Card(
                      elevation: 1,
                      child: Container(
                        height: 147,
                        width: 350,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_sharp),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                Text("willsmith@gmail.com",style: TextStyle(fontSize: 14),),
                                  ],
                                ),
                              ],
                            ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.phone),
                                          iconSize: 20.0,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("+1 985 521 1234",style: TextStyle(fontSize: 14),),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.location_on_outlined),
                                          iconSize: 20.0,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("Ottawa, Canada",style: TextStyle(fontSize: 14),),
                                      ],
                                    ),
                                  ],
                                ),
                          ],
                        ),
                      ),
                    ),

                                                                        // --------------  Update billing T / C --------------
                    Padding(
                      padding: const EdgeInsets.only(right: 240.0,top: 10,bottom: 10),
                        child: Text("Update Billing",style: GoogleFonts.poppins( textStyle:Theme.of(context).textTheme.headline4,
                          fontSize: 16,
                        foreground: Paint()
                      ),),
                    ),

                    Card(
                      elevation: 1,
                      child: Container(
                        height: 76,
                        width: 350,
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                child: Image.asset("img/shield.png",width: 60,height: 50,),
                              ),
                              title: Text("5475 5845 1215 XXXX ",style: TextStyle(color: Colors.black),),
                              subtitle: Text("ICICI Credit Card",style: TextStyle(color: Colors.black),),
                              trailing: Image.asset(
                                "img/Icon material-e.png",
                                width: 40,
                              ),
                              onTap: (){},
                            )

                          ],
                        ),
                      ),
                    ),
                                                                       // ---------------- Preference T / C ---------------
                    Padding(
                      padding: const EdgeInsets.only(right: 260.0,top: 10,bottom: 10),
                      child: Text("Preference",style: GoogleFonts.poppins( textStyle:Theme.of(context).textTheme.headline4,
                          fontSize: 16,
                          foreground: Paint()
                      ),),
                    ),
                    Card(
                      elevation: 1,
                      child: Container(
                        height: 192,
                        width: 350,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text("Dark mode",style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_sharp),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text("Time preference",style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.phone),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text("Location",style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.location_on_outlined),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text("Skins",style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.location_on_outlined),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                                                                     //----------  Login Details T/ C ---------------------
                    Padding(
                      padding: const EdgeInsets.only(right: 250.0,top: 10,bottom: 10),
                      child: Text("Login Details",style: GoogleFonts.poppins( textStyle:Theme.of(context).textTheme.headline4,
                          fontSize: 16,
                          foreground: Paint()
                      ),),
                    ),
                    Card(
                      elevation: 1,
                      child: Container(
                        height: 123,
                        width: 350,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text("willsmith@gmail.com",style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_sharp),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text("Ottawa, Canada",style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.location_on_outlined),
                                      iconSize: 20.0,
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
