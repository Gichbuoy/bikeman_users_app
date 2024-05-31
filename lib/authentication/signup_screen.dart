import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen>
{
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [

              Image.asset(
                "assets/images/bike4.jpg"
              ),

              const Text(
                "Create A User\'s Account",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // text fields + button
              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  children: [

                    TextField(
                      controller: userNameTextEditingController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "User Name",
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                        hintText: "UserName",
                        hintStyle: TextStyle()
                      ),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: "User Email",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle()
                      ),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true, // for security
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          labelText: "User Password",
                          labelStyle: TextStyle(
                            fontSize: 14,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle()
                      ),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    ElevatedButton(
                      onPressed: ()
                      {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10)
                      ),
                      child: const Text(
                        "Sign Up"
                      ),
                    ),


                  ],
                ),
              ),

              //text button
              TextButton(
                onPressed: ()
                {

                },
                child: const Text(
                  "Already have an Account? Login Here",
                  style: TextStyle(
                    color: Colors.white,
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
