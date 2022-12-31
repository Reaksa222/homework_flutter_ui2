import 'package:flutter/material.dart';
import 'package:flutter_3/homework/loginPage.dart';
import 'package:flutter_3/homework/verifyPage.dart';

class resetPage extends StatefulWidget {
  const resetPage({Key? key}) : super(key: key);

  @override
  State<resetPage> createState() => _resetPageState();
}

class _resetPageState extends State<resetPage> {
  void nagivateNextpage(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return verifyPage();
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
                  labelStyle: TextStyle(color: Colors.grey) ,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                   ),
               enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
               //   border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.mail,color: Colors.black,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "please provide your email to reset your password please\ndon't share any data to other people.",
                    style: TextStyle(
                      //  fontWeight: FontWeight.bold,
                      // decoration: TextDecoration.underline,
                      color: Colors.red,
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
                    'Have an account?',
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
