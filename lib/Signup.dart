import 'package:flutter/material.dart';
import 'package:newnew/Login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
 FocusNode n=FocusNode();
 FocusNode un=FocusNode();
 FocusNode em=FocusNode();
 FocusNode numb=FocusNode();
 FocusNode pas=FocusNode();
 FocusNode cnfmpas=FocusNode();
class _SignUpState extends State<SignUp> {
  TextEditingController name = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();
void dispose(){
super.dispose();
n.dispose();
un.dispose();
em.dispose();
numb.dispose();
pas.dispose();
cnfmpas.dispose();
name.dispose();
username.dispose();
email.dispose();
phonenumber.dispose();
password.dispose();
confirmpassword.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: 
        Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/backgroundscreen.png',
              ),
              fit: BoxFit.cover)
              ),
      alignment: Alignment.topCenter,
      child: signupbodyPart(),
        )
    )
  
    ;
  }

  Widget signupbodyPart() {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            '     Sign up',
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
          
            onEditingComplete:() =>
          FocusScope.of(context).requestFocus(un),
            focusNode: n,
            controller: name,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '                Enter Name',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            onEditingComplete:() =>
          FocusScope.of(context).requestFocus(em
          ),
            focusNode: un,
            controller: username,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '                Enter User Name',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            onEditingComplete:() =>
          FocusScope.of(context).requestFocus(numb),
            focusNode: em,
            controller: email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '                Enter Email',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            onEditingComplete:() =>
          FocusScope.of(context).requestFocus(pas),
            focusNode: numb,
            controller: phonenumber,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '                Enter Phone Number',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            onEditingComplete:() =>
          FocusScope.of(context).requestFocus(cnfmpas),
            focusNode: pas,
            controller: password,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '                Enter Password',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          margin: EdgeInsets.only(top: 21),
          height: 50,
          padding: EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            
            focusNode: cnfmpas,
            controller: confirmpassword,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: '                Confirm Password',
              border: InputBorder.none,
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            color: Color(0xff16d59f),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              padding:
                  EdgeInsets.only(top: 14, left: 60, right: 60, bottom: 10),
              child: Text(
                'Sign up',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            )
            ),
            
             Container(
               padding:
                  EdgeInsets.only(top: 14, left: 40, right: 40, bottom: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Already have an accout? ",
               style: TextStyle(color: Color(0xff5e5e5e)),),
              InkWell(
                onTap: (){
                   Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('Log In',
                style: TextStyle(color: Colors.white),),
              )
               ],
             ),
           )
      ],
    ));
  }
}
