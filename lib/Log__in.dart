// ignore: file_names
import 'package:flutter/material.dart';
import 'package:test/sgared/component/button.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
              
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                
                TextFormField(
                  validator: (value) =>
                      value!.length < 4 ? 'Email must be string' : 'corr',

                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  // tybe of data filled here
                  onFieldSubmitted: ((value) {
                    print(value);
                  }),
                  
                  decoration: InputDecoration(
                   
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) =>
                      value!.length < 4 ? 'password must be string' : 'corr',
                  obscureText: ispassword,
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  // tybe of data filled here
                  onFieldSubmitted: ((value) {
                    print(value);
                  }),
                  //  validator: (value) => ,
                  decoration: InputDecoration(
                      // hintText: 'Email address',
                      labelText: '=password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: ispassword
                          ? IconButton(
                              onPressed: (() {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              }),
                              icon: Icon(Icons.visibility_sharp))
                          : IconButton(
                              onPressed: (() {
                                setState(() {
                                  ispassword = !ispassword;
                                });
                              }),
                              icon: Icon(Icons.disabled_visible_sharp))),
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
             defaultButton(
                  text: 'login',
                  function: ()
                  {
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                  },
                ),
            SizedBox(
              height: 40,
            ),
           
            defaultButton(
                  text: 'ReGIster',
                  function: ()
                  {
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                  },
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Register Now',
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
