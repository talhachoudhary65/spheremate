
import 'package:flutter/material.dart';
import 'package:spheremate/signup.dart';
import 'Forgot.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff242E5B),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(height: 170,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("LOGIN",textAlign:TextAlign.center,
                style:TextStyle(
                  fontSize: 40,
                color: Colors.white
                )
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:40 ),
              child: Text("Sign In to get started",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white
              ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(
                    color: Colors.grey
                  ),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),borderSide: BorderSide(
                    color: Colors.green,
                  )
                  )
                ),
              ),
              //child: TextFormField(decoration:InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)))),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.green,
                    )
                    )
                ),
              ),
              //child: TextFormField(decoration:InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)))),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:245),
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Forgot(),));
                },
                child: Text("Forgot Password",textAlign:TextAlign.center,
      
                    style:TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,
                        color: Colors.white
                    )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child:GestureDetector(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
              },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color:Color(0xff50E3C1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text("LOGIN",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70,),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
      
                SizedBox(
                  width:110,
                  child: Divider(color:Colors.white,),),
                  SizedBox(width: 40,),
                  Text("Continue with",style:TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                      color: Colors.white
                  ),),
                  SizedBox(width:25,),
                  SizedBox(
                      width: 109,
                      child: Divider(color: Colors.white,))
      
      
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center(
                child:Row(
              children: [
                SizedBox(width: 80,),
               GestureDetector(
                 onTap:(){
                   Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
                 },
                 child: Container(
                   height: 60,
                   width: 60,
                   child:Image.asset("assets/images/Apple-Logo.png"),
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(15),
                     color:Colors.white
                   ),
                 ),
               ),
                SizedBox(width: 40,),
                GestureDetector(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    child:Image.asset("assets/images/7611770.png",scale:3 ,),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:Colors.white
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                GestureDetector(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    child:Image.asset("assets/images/F_icon_reversed.svg.png",scale:4,),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:Colors.white
                    ),
                  ),
                ),
              ],
            )),
      SizedBox(height: 130,),
            Center(
              child: Container(
                width: 500,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
                  color:Color(0xff50E3C1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 40,),
                     Text("Don't you have an Account?",textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 15,
                    ),),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => signup(),));
                      },
                      child: Text("Sign Up",style:TextStyle(
                        decoration: TextDecoration.underline,height:3,decorationThickness: 3,
                        fontWeight: FontWeight.bold,fontSize:16
                      ),),
                    )
                  ],
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
