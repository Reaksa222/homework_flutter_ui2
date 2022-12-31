import 'package:flutter/material.dart';
import 'package:flutter_3/homework/passChangedPage.dart';

class changepassPage extends StatefulWidget {
  const changepassPage({Key? key}) : super(key: key);

  @override
  State<changepassPage> createState() => _changepassPageState();
}

class _changepassPageState extends State<changepassPage> {
  void nagivateNextpage(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return passChangedPage();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 60, 10, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Change\nNew Password",
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
                  labelText: 'New Password',
                  labelStyle: TextStyle(color: Colors.grey) ,
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                 // focusedBorder: UnderlineInputBorder(),
                  //   border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_moderator_outlined,color: Colors.grey,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Conform New Password',
                  labelStyle: TextStyle(color: Colors.grey) ,
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                //  focusedBorder: UnderlineInputBorder(),
                 // border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_moderator_outlined,color: Colors.grey,),
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
                      color: Colors.grey
                      //  fontWeight: FontWeight.bold,
                      // decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(7),
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
                    'Change Password',
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
