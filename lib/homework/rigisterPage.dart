import 'package:flutter/material.dart';
import 'package:flutter_3/homework/getdata.dart';
import 'package:flutter_3/homework/listPage.dart';
import 'package:flutter_3/homework/loginPage.dart';

class rigisterPage extends StatefulWidget {
  const rigisterPage({Key? key}) : super(key: key);

  @override
  State<rigisterPage> createState() => _rigisterPageState();
}

class _rigisterPageState extends State<rigisterPage> {
  late final TextEditingController _name;
  late final TextEditingController _email;
  late  final TextEditingController _phone;
  late final TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _email = TextEditingController();
    _phone = TextEditingController();
    _password = TextEditingController();
  }

  void nagivateNextpage1(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return Getdata(
        username: _name.text,
        password: _password.text,
      );
    }));
  }
  void nagivateNextpage2(BuildContext ctx){
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
                    "Rigister\nNew account",
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
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.contact_page_sharp),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _email,
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
                controller: _phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.phone_android),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _password,
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
                    nagivateNextpage1(context);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
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
                    nagivateNextpage2(context);
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
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:(context) =>loginPage(),
                          ),
                        );
                      },
                    child: Text(
                      '  Login',
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
