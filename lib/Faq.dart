import 'package:flutter/material.dart';
class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xff242E5B),
        title: const Text(
          "SUPPORT",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        leadingWidth: 60,
      ),
      body: Column(
        children: [
          Divider(color: Colors.white24, height: 10),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text("Frequently Asked Questions",style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold,color: Colors.white),),
          ),
          Divider(color: Colors.white24, height: 10),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    ExpansionTile(
                      title: Text("How to communicate with other drivers?",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight:FontWeight.bold),),
                      children: [

                        ListTile(title:Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xffCFCFCF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey[600]),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                    Divider(color: Colors.white24, height: 10),
                    ExpansionTile(
                      title: Text("How to personalize my profile?",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight:FontWeight.bold),),
                      children: [

                        ListTile(title:Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xffCFCFCF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey[600]),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                    Divider(color: Colors.white24, height: 10),
                    ExpansionTile(
                      title: Text("How to report accidents, police,hazards?",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight:FontWeight.bold),),
                      children: [

                        ListTile(title:Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xffCFCFCF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey[600]),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                )

              ],
            ),
          )

        ],
      ),


    );
  }
}
