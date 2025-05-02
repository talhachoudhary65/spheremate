import 'package:flutter/material.dart';

import 'Otp.dart';
class Forgot extends StatelessWidget {
  const Forgot({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      appBar: AppBar(
        backgroundColor: Color(0xff242E5B),
        title: Text("Forgot Password?",style: TextStyle(
          color: Colors.white,
          fontWeight:FontWeight.bold,
        ),),
        centerTitle: false,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color:Colors.white ,),
        leadingWidth: 60,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Divider(
                thickness: 2,
                color: Colors.white,
                height: 1,
                indent: 0,
                endIndent: 0,
              ),
              Image.asset("assets/images/ForgotPass.png",scale: 4,),
              Text("Forgot Password?",style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,

              ),),
              Text( "Enter your registered email id so we can share\nyou a link to reset your password",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),),
              SizedBox(height: 40,),
              Divider(thickness:2),
              SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.only(right: 260),
                child: Text(
                  "Email:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Center(
                child:GestureDetector(onTap:(){
                 // Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
                },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color:Color(0xff50E3C1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Otp(),));
                      },
                      child: Center(
                        child: Text("PROCEED",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),

    );
  }
}
