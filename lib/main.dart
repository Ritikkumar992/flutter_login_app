import 'package:flutter/material.dart';

void main()
{
  runApp(myApp());
}


class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Container(
            // width: double.infinity,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            color: Colors.blue,
          )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            const Text(
              "PROMACT",
              style: TextStyle(fontSize: 40.0, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Log in",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "User Name",
                        hintText: "User Name",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        )
                      ),
                      onChanged: (String name){},
                      validator: (name){
                        if(name!.isEmpty){
                          return "Please Enter Your Name";
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 30.0,),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                      ),
                      onChanged: (String password){},
                      validator: (password){
                        if(password!.isEmpty){
                          return "Please Enter Your Password";
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      minWidth: double.infinity,
                        height: 50,

                        onPressed: (){},
                        color: Colors.blue,
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text(
                            "Does not have account?"
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Sign in",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20.0),
                        )
                      ]
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
