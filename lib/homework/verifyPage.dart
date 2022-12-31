import 'package:flutter/material.dart';
import 'package:flutter_3/homework/changepassPage.dart';
import 'package:flutter_3/homework/passChangedPage.dart';

class verifyPage extends StatefulWidget {
  const verifyPage({Key? key}) : super(key: key);

  @override
  State<verifyPage> createState() => _verifyPageState();
}

class _verifyPageState extends State<verifyPage> {
  void nagivateNextpage(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return changepassPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 70, 10, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Code\nVerification",
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
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                          decoration: InputDecoration(
                         //   hintStyle: TextStyle(fontSize:90),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                        decoration: InputDecoration(
                      //    hintStyle: TextStyle(fontSize:90),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                        decoration: InputDecoration(
                       //   hintStyle: TextStyle(fontSize:90),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                        decoration: InputDecoration(
                      //    hintStyle: TextStyle(fontSize:90),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
                    'Verification',
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
                    "Didn't receive the code?",
                  ),
                  Text(
                    '  Re-send(32)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 260,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Need help?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
