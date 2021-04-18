import 'package:blood_donation/blood_screen.dart';
import 'package:blood_donation/forgot_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}
String valueChoose;
List listItem=[
  "A+","A-","B+","B-","AB+","AB-","O+","O-"
];

class _SignInScreenState extends State<SignInScreen>{
// this is for phone number input
  Widget buildPhone(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Please enter your phone number",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,

          ),
        ),
        SizedBox(height: 15),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow:[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0,2)
              ),
            ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xff5ac18e)
                ),
                hintText: '05',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }
// this is for sign button
  Widget buildSignUpBtn(){
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        // ignore: deprecated_member_use
        child: RaisedButton(
          color: Color(0xffffcccc),
          elevation: 5,
          onPressed: (){
            Navigator.of(context)
                .push(
                MaterialPageRoute(
                    builder: (context)=> ForgotScreen()
                )
            );
          },
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Text(
            'NEXT',
            style: TextStyle(
              color: Color(0xff5ac18e),
              fontSize: 18,
              fontWeight: FontWeight.w300,

            ),
          ),
        )
    );
  }


// this is for sign in page director
  Widget buildSignInBtn(){
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(
            MaterialPageRoute(
                builder: (context)=> LoginScreen()
            )
        );
      },
      child: RichText(
          text: TextSpan(
              children: [
                TextSpan(
                    text: "You Don't have an Account?  ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                    )
                ),
                TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )
      ),
    );
  }
  Widget buildForgotBtn(){
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(
            MaterialPageRoute(
                builder: (context)=> ForgotScreen()
            )
        );
      },
      child: RichText(
          text: TextSpan(
              children: [
                TextSpan(
                    text: "I don't remember Password ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                    )
                ),
                TextSpan(
                    text: "Click here",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    )
                )
              ]
          )
      ),
    );
  }


  @override
  // this is the main body
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors:[
                          Color(0x80FF0000),
                          Color(0x99FF0000),
                          Color(0xb3FF0000),
                          Color(0xccFF0000),
                          Color(0xe6FF0000),
                          Color(0xffFF0000)
                        ]
                    )
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/blood.png'),
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic
                        ),
                      ),
                      SizedBox(height: 80),
                      buildPhone(),
                      SizedBox(height: 20),
                      buildSignUpBtn(),
                     buildSignInBtn(),
                      SizedBox(height: 10),
                      buildForgotBtn()
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

