import 'package:flutter/material.dart';
import 'package:flutter_3/homework/forgotpasswordPage.dart';
import 'package:flutter_3/homework/getdata.dart';
import 'package:flutter_3/homework/listPage.dart';
import 'package:flutter_3/homework/rigisterPage.dart';
import 'package:flutter_3/views/dashboard_page.dart';
import 'package:flutter_3/views/home_page.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  late final TextEditingController _emailcontroller;
  late final TextEditingController _passwordcontroller;

  @override
  void initState() {
    super.initState();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
  }
  void nagivateNextpage(BuildContext ctx){
      Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
        return Getdata(
          username: _emailcontroller.text,
          password: _passwordcontroller.text,
        );
      }));
  }

  void nagivateNextpage1(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return ListLoginPage();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login to\nfind the best food",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            //  Spacer(),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: _emailcontroller,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _passwordcontroller,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context) =>forgetpassPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                  ),
                  onPressed: (){
                    nagivateNextpage(context);
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                      side: const BorderSide(
                          width: 1, // the thickness
                          color: Colors.black // the color of the border
                      )
                  ),
                  onPressed: (){
                    nagivateNextpage1(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(child: Icon(Icons.facebook,color: Colors.black,)),
                      SizedBox(width: 7,),
                      Text(
                        'Sign Up with Facebook',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            //  Spacer(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => rigisterPage(),
                      ),
                    ),
                    child: Text(
                      ' Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
