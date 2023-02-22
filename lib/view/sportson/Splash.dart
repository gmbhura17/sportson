import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sportson/view/sportson/Signup.dart';
import 'package:sportson/view/sportson/Welcome.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

// ca-app-pub-4869079701257297~9111796627   app-id
// ca-app-pub-4869079701257297/2957699237   unit-id

// ca-app-pub-4869079701257297/7252167462   unit-id2

// ca-app-pub-3940256099942544/6300978111   unit-id test

class _SplashState extends State<Splash> {

  BannerAd? _centerBannerAd;
  bool _iscenter=false;

  BannerAd? _downBannerAd;
  bool _isdown=false;

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
  loaddownbanner()
  {
    _downBannerAd = BannerAd(
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      size: AdSize.largeBanner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isdown = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
    _downBannerAd?.load();
  }

  @override
  void initState() {
    super.initState();
   loadcenterbanner();
    loaddownbanner();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff012245),
      // ----------------body ------------------------
      body: Column(
        children: [
          SizedBox(height: 200,),
          Stack(
            children: [
              Text(
                'Sports on what',
                style:GoogleFonts.teko( textStyle:Theme.of(context).textTheme.headline4,
                  fontSize: 41,
                  color: Color(0xFFC3E3AA),
                  //EEF8E7
                  //F5FAF1
                  //C3E3AA

                  // foreground: Paint()
                  //
                  //   ..style = PaintingStyle.stroke
                  //   ..strokeWidth = 1
                  //   ..color = Colors.lightGreen[700],
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
            ],
          ),

          SizedBox(height: 50),
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

          // GOOGLE AD at Center------------------------

          (_iscenter)?
          Container(
            height: _centerBannerAd?.size.height.toDouble(),
            width: _centerBannerAd?.size.width.toDouble(),
            child: AdWidget(ad: _centerBannerAd!),
          ):
          SizedBox(height: 40,),

          // (_iscenter)?
          // Container(
          //   height: _centerBannerAd.size.height.toDouble(),
          //   width: _centerBannerAd.size.width.toDouble(),
          //   child: AdWidget(ad: _centerBannerAd),
          // ):
          // SizedBox(height: 20,),

          (_isdown)?
          Container(
            height: _downBannerAd?.size.height.toDouble(),
            width: _downBannerAd?.size.width.toDouble(),
            child: AdWidget(ad: _downBannerAd!),

          ):SizedBox(height: 0,),






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
              onPressed: () {},
            ),
          ),
          SizedBox(height:15),

          Padding(
            padding: const EdgeInsets.only(left: 95.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Don't want ads?",style: TextStyle(fontSize: 17,
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
                          MaterialPageRoute(builder: (context) =>  Signup()),);
                      },
                      child: Text(

                        'Click here',
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
    );
  }
}
