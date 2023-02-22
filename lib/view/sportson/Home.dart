import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sportson/resources/StyleResources.dart';
import 'package:sportson/view/sportson/MyProfile.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // final themeChange = Provider.of<DarkThemeProvider>(context,listen: true);
  BannerAd? _centerBannerAd;
  bool _iscenter=false;

  loadcenterbanner()
  {
    _centerBannerAd = BannerAd(
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      size: AdSize.largeBanner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _iscenter = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
    _centerBannerAd?.load();
  }

  @override
  void initState() {
    super.initState();
    loadcenterbanner();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            color: Color(0xffF0F3F5),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    SizedBox(height: 30,),
                    //---------C-1-----------
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
                       width: MediaQuery.of(context).size.width,
                     child: ListView(
                       padding: EdgeInsets.only(top: 130),
                       scrollDirection: Axis.horizontal,
                       children: [
                         // SizedBox(
                         //   height: 150
                         // ),
                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => GridViewExample()));
                           },
                           child:  Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),

                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => ImageWidgetExample()));
                           },
                           child: Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),

                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => ArithmeticExample()));
                           },
                           child: Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),

                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => DropdownExample()));
                           },
                           child: Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),

                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => CheckboxExample()));
                           },
                           child: Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),

                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => SalaryExample()));
                           },
                           child: Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),

                         GestureDetector(
                           onTap: () {
                             // Navigator.of(context).push(MaterialPageRoute(
                             //     builder: (context) => SalaryExample()));
                           },
                           child:Container(
                             width: 60,
                             height: 60,
                             padding: EdgeInsets.all(15.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                   color: Color(0xff919191),
                                   width: 1.0
                               ),
                               // color:  (themeChange.isdark)?StyleResources.EditIconBackgroundDark:StyleResources.WhiteColor,
                             ),
                             child:Image.asset("img/Ellipse 1.png",width: 30,),
                           ),
                         ),
                       ],
                     ),
                        ),
                    ),

                                                                                  //---------C-2-----------
                    Card(
                      shape: RoundedRectangleBorder( //<-- SEE HERE
                        // side: BorderSide(
                        //   color: Colors.w,
                        // ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 280.0),
                            child: ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=> Sports())
                                  );
                                },
                                child: Text("log in",style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      //     .only(
                                      //     topLeft: Radius.circular(20),
                                      //     topRight: Radius.elliptical(10, 40)
                                      //   //  bottomLeft:, bottom left
                                      //   // bottomRight: bottom right
                                      // )
                                  ),
                                primary: Color(0xff69be28),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          ListTile(
                            leading: CircleAvatar(
                              child: Image.asset("img/shield.png",width: 60,height: 50,),
                            ),
                            title: Text("Welcome ",style: TextStyle(color: Colors.white),),
                            subtitle: Text("Monday, 30 july",style: TextStyle(color: Colors.white),),
                            trailing: Text("3:15 PM",style: TextStyle(color: Colors.white),),
                            onTap: (){},
                          ),
                        ],
                      ),
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
                  ],
                ),
                SizedBox(height: 10,),

                                                                                //-----------Expanded 3 Cards --------------
                Expanded(
                  child: ListView(
                    children: [
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          // color: Colors.white,
                          height: 200,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 80.0,top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("img/rider.png",width: 70,),
                                        Text("rider"),
                                      ],
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Column(
                                        children: [
                                          Text("Today",style: TextStyle(fontSize: 10),),
                                          Text("06:30 PM",style: TextStyle(fontSize: 14),),
                                        ],
                                      ),
                                    ),

                                    Column(
                                      children: [
                                        Image.asset("img/tiger.png",width: 70,),
                                        Text("Jaguar"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Commcast"),
                                        SizedBox(height: 7,),
                                        Text("Dish"),
                                        SizedBox(height: 7,),
                                        Text("Direct"),
                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("-"),
                                        SizedBox(height: 7,),
                                        Text("-"),
                                        SizedBox(height: 7,),
                                        Text("-"),
                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("174,627",style: TextStyle(color: Color(0xff7DC745)),),
                                        SizedBox(height: 7,),
                                        Text("DIRECT TV",style: TextStyle(color: Color(0xff7DC745)),),
                                        SizedBox(height: 7,),
                                        Text("ABC KOMO",style: TextStyle(color: Color(0xff7DC745)),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFFFFF),

                            // border: Border(
                            //   left: BorderSide(
                            //     color: Colors.black,
                            //     width: 3,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),


                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          // color: Colors.white,
                          height: 200,
                          width: 350,
                          // child: Text("Hello"),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 80.0,top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("img/rider.png",width: 70,),
                                        Text("rider"),
                                        // Text("Commcast"),
                                        // Text("Dish"),
                                        // Text("Direct"),

                                      ],
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Column(
                                        children: [
                                          Text("Today",style: TextStyle(fontSize: 10),),
                                          Text("06:30 PM",style: TextStyle(fontSize: 14),),
                                          // Text("-"),
                                          // Text("-"),
                                          // Text("-"),
                                        ],
                                      ),
                                    ),

                                    Column(
                                      children: [
                                        Image.asset("img/tiger.png",width: 70,),
                                        Text("Jaguar"),
                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Commcast"),
                                        SizedBox(height: 7,),
                                        Text("Dish"),
                                        SizedBox(height: 7,),
                                        Text("Direct"),
                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("-"),
                                        SizedBox(height: 7,),
                                        Text("-"),
                                        SizedBox(height: 7,),
                                        Text("-"),
                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("174,627",style: TextStyle(color: Color(0xff7DC745)),),
                                        SizedBox(height: 7,),
                                        Text("DIRECT TV",style: TextStyle(color: Color(0xff7DC745)),),
                                        SizedBox(height: 7,),
                                        Text("ABC KOMO",style: TextStyle(color: Color(0xff7DC745)),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFFFFF),
                            // border: Border(
                            //   left: BorderSide(
                            //     color: Colors.black,
                            //     width: 3,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      (_iscenter)?
                      Container(
                        height: _centerBannerAd?.size.height.toDouble(),
                        width: _centerBannerAd?.size.width.toDouble(),
                        child: AdWidget(ad: _centerBannerAd!),
                      ):
                      SizedBox(height: 40,),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder( //<-- SEE HERE
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          // color: Colors.white,
                          height: 250,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 80.0,top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset("img/rider.png",width: 70,),
                                        Text("rider"),
                                        // Text("Commcast"),
                                        // Text("Dish"),
                                        // Text("Direct"),

                                      ],
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top:10.0),
                                      child: Column(
                                        children: [
                                          Text("Today",style: TextStyle(fontSize: 10),),
                                          Text("06:30 PM",style: TextStyle(fontSize: 14),),
                                          // Text("-"),
                                          // Text("-"),
                                          // Text("-"),
                                        ],
                                      ),
                                    ),

                                    Column(
                                      children: [
                                        Image.asset("img/tiger.png",width: 70,),
                                        Text("Jaguar"),
                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Commcast"),
                                        SizedBox(height: 7,),
                                        Text("Dish"),
                                        SizedBox(height: 7,),
                                        Text("Direct"),
                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("-"),
                                        SizedBox(height: 7,),
                                        Text("-"),
                                        SizedBox(height: 7,),
                                        Text("-"),
                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("174,627",style: TextStyle(color: Color(0xff7DC745)),),
                                        SizedBox(height: 7,),
                                        Text("DIRECT TV",style: TextStyle(color: Color(0xff7DC745)),),
                                        SizedBox(height: 7,),
                                        Text("ABC KOMO",style: TextStyle(color: Color(0xff7DC745)),),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFFFFF),
                            // border: Border(
                            //   left: BorderSide(
                            //     color: Colors.black,
                            //     width: 3,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                //-------------------cards(3)--------------------------------------------

              ],
            ),
          ),
        ],
      ),
















      //----------------------------------------------------------------------------------------------

      // Card(
      //   elevation: 2,
      //   shape: RoundedRectangleBorder( //<-- SEE HERE
      //     borderRadius: BorderRadius.circular(20.0),
      //   ),
      //   child: Container(
      //     color: Colors.white,
      //     height: 150,
      //     width: 350,
      //   ),
      // ),

      // --------------------------------------------------------------------------------------------

      // Container(
      //   color: Color(0xff012245),
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         leading: CircleAvatar(
      //           child: Image.asset("img/sportslogo.jpg",width: 38,),
      //           // child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5063TdBKjwvj4et5hkyjceqyE6lcS4BkPka8jdwxJLw&s",width: 100.0,),
      //         ),
      //         title: Text("Welcome ",style: TextStyle(color: Colors.white),),
      //         subtitle: Text("Monday, 30 july",style: TextStyle(color: Colors.white),),
      //         trailing: Text("3:15 PM",style: TextStyle(color: Colors.white),),
      //         onTap: (){},
      //       ),
      //     ],
      //     //0xffEFF2F4
      //   ),
      // )

      //------------------------------------------------------------------------------------------------------
    );
  }
}
