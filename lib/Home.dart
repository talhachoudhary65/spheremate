import 'package:flutter/material.dart';

import 'PageControler.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/GoogleMap.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 90,
              width: 410,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xff242E5B)),
                  const SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xff242E5B),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: const Color(0xff50E3C1),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TweenAnimationBuilder<int>(
                          tween: IntTween(begin: 1, end: 80),
                          duration: const Duration(seconds: 2),
                          builder: (context, value, child) {
                            return Text(
                              "$value",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                        const Text(
                          "MPH",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Text(
                        "200 meters Turn Right onto",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff242E6B),
                        ),
                      ),
                      Text(
                        "Rue St. Honoré Road",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff242E6B),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Image.asset("assets/images/Notification.png", scale: 3),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 310),
              child: SizedBox(
                width: 40,
                child: Column(
                  children: [
                    GestureDetector(
                        onTap:(){

                          Navigator.push(context,MaterialPageRoute(builder: (context) => PageViewClass(),));
                        },
                        child: Image.asset("assets/images/Messages.png", scale: 4)),
                    const SizedBox(height: 2),
                    Image.asset("assets/images/Group8.png", scale: 4),
                  ],
                ),
              ),
            ),
            Spacer(),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 415,
                  decoration: BoxDecoration(
                    color: Color(0xff50E3C1),
                  ),
                  child: Center(
                    child: Column(

                      children: [
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Search Bar with TextFormField
                            Expanded(
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    Icon(Icons.search, color: Colors.grey),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Where we headed?",
                                          hintStyle: TextStyle(color: Colors.grey),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            // Mic Button
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child:Image.asset("assets/images/VoiceIcon.png",scale: 3,)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 80),
                  height: 170,
                  width: 415,
                  decoration: BoxDecoration(
                    color: Color(0xff242E5B),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),),
                Column(
                  children: [
                    SizedBox(height: 90,),
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text("Shortcuts",style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,

                      ),),
                    ),
                    SizedBox(height: 3,),
                    Divider(thickness: 2,),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/Ghost.png",scale: 2.5,),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.white,


                              ),

                            ),
                            Text("Ghost\nMode",style: TextStyle(color: Colors.white,fontSize: 12),textAlign:TextAlign.center,)
                          ],

                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/ICONSMS.png",scale: 2.5,),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.white,


                              ),

                            ),
                            Text("Phrases\n& Messages",style: TextStyle(color: Colors.white,fontSize: 12),textAlign:TextAlign.center,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/Voice.png",scale: 2.5,),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.white,


                              ),

                            ),
                            Text("Friday\nSound",style: TextStyle(color: Colors.white,fontSize: 12),textAlign:TextAlign.center,)
                          ],

                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/CarIcon.png",scale: 2.5,),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.white,


                              ),

                            ),
                            Text("PassengeR\nMode",style: TextStyle(color: Colors.white,fontSize: 12),textAlign:TextAlign.center,)
                          ],

                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/images/CallIcon.png",scale: 2.5,),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color: Colors.white,


                              ),

                            ),
                            Text("Dial\n911",style: TextStyle(color: Colors.white,fontSize: 12),textAlign:TextAlign.center,)
                          ],

                        ),
                      ],

                    ),

                  ],
                ),
              ],

            ),

          ],
        ),
      ),
    );
  }
}
