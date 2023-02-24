import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lavie/views/sign_up.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginState extends State<Login> {
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
                Image.asset("images/leaves.jpeg",width: 130),
            ]),
            Image.asset("images/lavie.jpeg",alignment: Alignment.center,width: 100),
            Row(
              children: [Padding(
                padding: const EdgeInsets.fromLTRB(60,55,60,40),
                child:  TextButton(
                    child: Text("Sign up",style: TextStyle(fontSize: 18,
                      color: Colors.grey,),),
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
                  },
                ),
              ),
                TextButton(
                  child: Text("Login",style: TextStyle(fontSize: 18,
                    color:Colors.lightGreenAccent.shade700,),),
                   onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),));
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 7),
              child: Row(
                children: [
                  Text("Email",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),),
              Container(
                padding: const EdgeInsets.fromLTRB(30,0,30,0),
                height: 50,
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 7),
                child: Row(
                  children: [
                    Text("Password",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                height: 50,
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),),

                ),
              ),
            SizedBox(height: 40,),
            Container(
                height: 50,
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
                        height: 55,
                        width: 50,
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
                        height: 40,
                        width: 45,
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
                Image.asset("images/leavs2.jpeg",width: 110),
              ],
            )
          ],

        )
      ),
    ),

    );
  }
}

