import 'package:flutter/material.dart';
import 'package:flutter_3/homework/loginPage.dart';
import 'package:flutter_3/homework/resetPage.dart';

class forgetpassPage extends StatefulWidget {
  const forgetpassPage({Key? key}) : super(key: key);

  @override
  State<forgetpassPage> createState() => _forgetpassPageState();
}

class _forgetpassPageState extends State<forgetpassPage> {

  void nagivateNextpage(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return resetPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Forgot\nPassword?",
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
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "please provide your email to reset your password please\ndon't share any data to other people",
                    style: TextStyle(
                    //  fontWeight: FontWeight.bold,
                     // decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
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
                    'Reset Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //  Spacer(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Remember now?',
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
                      '  Login here',
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
