import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lavie/views/login.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
TextEditingController firstnameController = TextEditingController();
TextEditingController lastnameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmpasswordController = TextEditingController();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height ,
            color: Colors.white10,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("images/leaves.jpeg",width: 90),
                    ]),
                Image.asset("images/lavie.jpeg",alignment: Alignment.center,width: 100),
                Row(
                  children: [Padding(
                    padding: const EdgeInsets.fromLTRB(60,30,60,25),
                    child:  TextButton(
                      child: Text("Sign up",style: TextStyle(fontSize: 18,
                        color: Colors.lightGreenAccent.shade700,),),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUp(),));
                      },
                    ),
                  ),
                    TextButton(
                      child: Text("Login",style: TextStyle(fontSize: 18,
                        color:  Colors.grey,),),

                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login(),));
                      },
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,10,0),
              child: Row(
                children: [
                  Column(
                  children: [
                  Text("First Name",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold,),),
                    Container(
                  height: 45,
                  width: 140,
                  child: TextField(
                    controller: firstnameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                    ),
                  ),
                    ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,30,0),
                    child: Column(
                      children: [
                        Text("Last Name",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                        Container(
                          height: 45,
                          width: 140,
                          child: TextField(
                            controller: lastnameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 7),
                  child: Row(
                    children: [
                      Text("Email",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),),
                Container(
                  padding: const EdgeInsets.fromLTRB(30,0,30,0),
                  height: 45,
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 7),
                  child: Row(
                    children: [
                      Text("Password",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),),
                Container(
                  padding: const EdgeInsets.fromLTRB(30,0,30,0),
                  height: 45,
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 7),
                  child: Row(
                    children: [
                      Text("Confirm Password",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),),
                Container(
                  padding: const EdgeInsets.fromLTRB(30,0,30,0),
                  height: 45,
                  child: TextField(
                    controller: confirmpasswordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: 45,
                  width: 320,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(

                      child: const Text('Login',style: TextStyle(fontSize: 20),),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreenAccent.shade700,
                      )
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(115, 20, 30, 0),
                      child: Tab(
                        icon: Container(
                          child: Image(
                            height: 45,
                            width: 40,
                            image: AssetImage(
                              'images/google.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Tab(
                        icon: Container(
                          child: Image(
                            height: 30,
                            width: 35,
                            image: AssetImage(
                              'images/facebook.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("images/leavs2.jpeg",width: 80),
                  ],
                )
            ]
        ),
      ),
      ),
    );
  }
}
