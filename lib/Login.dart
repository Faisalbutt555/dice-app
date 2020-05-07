import 'package:flutter/material.dart';
import 'package:newnew/Signup.dart';
import 'package:newnew/pincode.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
FocusNode focusemail=FocusNode();
FocusNode focus2password=FocusNode();
FocusNode focuscode1=FocusNode();
FocusNode focuscode2=FocusNode();
FocusNode focuscode3=FocusNode();
FocusNode focuscode4=FocusNode();
FocusNode newpasswordd=FocusNode();
FocusNode confirmpasswordd=FocusNode();
  TextEditingController emailadres = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController forgotpassemail = new TextEditingController();
  TextEditingController numb  = new TextEditingController();
  TextEditingController numbcode1  = new TextEditingController();
  TextEditingController numbcode2  = new TextEditingController();
  TextEditingController numbcode3  = new TextEditingController();
  TextEditingController numbcode4  = new TextEditingController();
  TextEditingController newpassword  = new TextEditingController();
  TextEditingController confirmpassword  = new TextEditingController();


void dispose(){
  super.dispose();
  focusemail.dispose();
  focus2password.dispose();
  focuscode1.dispose();
  focuscode2.dispose();
  focuscode3.dispose();
  focuscode4.dispose();
  newpasswordd.dispose();
  confirmpasswordd.dispose();
  emailadres.dispose();
  password.dispose();
  forgotpassemail.dispose();
  numb.dispose();
  numbcode1.dispose();
  numbcode2.dispose();
  numbcode3.dispose();
  numbcode4.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: false,
     resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
                  child: Container(
     padding: EdgeInsets.only(left: 30,right: 30),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/backgroundscreen.png'),
          fit: BoxFit.cover,
      )
      ),
      alignment: Alignment.center,
      child: loginbodyPart(),
    ),

        ));
  }

  Widget loginbodyPart() {
    return Column(
      children: <Widget>[
        Container(
      padding: EdgeInsets.only(top:   MediaQuery.of(context).size.height/4),
        child: Column(   
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Log in',
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
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textInputAction: TextInputAction.next,
            // autofocus: true,
            onEditingComplete:() =>
          FocusScope.of(context).requestFocus(focus2password),
            focusNode: focusemail,
            textAlign: TextAlign.start,
            controller: emailadres,
            keyboardType: TextInputType.text,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '                    Enter Email Adress',
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            controller: password,
            focusNode: focus2password,
            decoration: InputDecoration(
              hintText: '                    Enter Password',
              border: InputBorder.none,
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 25),
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                
                showAlertDialog(context);
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            onPressed: () {
             
            },
            color: Color(0xff16d59f),
            child: Container(
              child: Text(
                'Log in',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            )
            ),
            SizedBox(height:  MediaQuery.of(context).size.height/4),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Don't have an accout? ",
               style: TextStyle(color: Color(0xff5e5e5e)),),
              InkWell(
                onTap: (){
                   Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text('SignUp',
                style: TextStyle(color: Colors.white),),
              )
               ],
             ),
           )
      ],
    )
    )
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    Dialog alert = Dialog(
 backgroundColor: Colors.transparent,
     
        child: 
      Container(
         height: MediaQuery.of(context).size.height*.5,
        width: MediaQuery.of(context).size.width*50,
     decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/orignalforgotpass.png'),
        fit: BoxFit.cover,
      )
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 70,),
          Center(child: Text('Forgot Password',
           style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 19,
                fontWeight: FontWeight.bold),),),
          SizedBox(height: 30,),
          RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
            onPressed: (){ 
              forgotpassemail=null;
              showAlertDialogemail(context);},
            child: Text('Recoverey through E-mail',
            style: TextStyle(color: Color(0xff43b494)),),
          ),
          SizedBox(height: 20,),
              RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
            onPressed: (){
              numb=null;
              numbcode1=null;
              numbcode2=null;
              numbcode3=null;
              numbcode4=null;
       showAlertDialogenumber(context);

            },
            child: Text('Recoverey through SMS',
            style: TextStyle(color: Color(0xff43b494)),),
          )
        ],
      ),
     
      
  
      )
      
      
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  showAlertDialogemail(BuildContext context) {
    Dialog alert =Dialog(
    backgroundColor: Colors.transparent,
     
      child:
      Container(
     height: MediaQuery.of(context).size.height*.5,
        width: MediaQuery.of(context).size.width*50,
     decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/orignalforgotpass.png'),
        fit: BoxFit.cover,
      )
      ),
      child: Column(
        children: <Widget>[
        SizedBox(height: 70,),
          Center(child: Text('Forgot Password',
           style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 19,
                fontWeight: FontWeight.bold),),),
          SizedBox(height: 30,),
          SingleChildScrollView(
                      child: Container(
            width: MediaQuery.of(context).size.width / 1.7,
            margin: EdgeInsets.only(top: 18),
            height: 50,
            padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.start,
            controller: forgotpassemail,
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
          ),
          SizedBox(height: 80,),
              RaisedButton(
                color: Color(0xff16d59f),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
            padding: EdgeInsets.only(left: 40,right: 40,top: 18,bottom: 15),
            onPressed: (){
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text('Send',
            style: TextStyle(color: Color(0xffffffff),
            fontSize: 17),),
          )
        ],
      ),
      ),
    );
     
  

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
    showAlertDialogenumber(BuildContext context) {
    Dialog alert = Dialog(
 backgroundColor: Colors.transparent,
    
        child: 
      Container(
    
         height: MediaQuery.of(context).size.height*.5,
        width: MediaQuery.of(context).size.width*50,
     decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/orignalforgotpass.png'),
        fit: BoxFit.cover,
      )
      ),
      child: Column(
        children: <Widget>[
        SizedBox(height: 70,),
          Center(child: Text('Forgot Password',
           style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 19,
                fontWeight: FontWeight.bold),),),
          SizedBox(height: 30,),
          Container(
          width: MediaQuery.of(context).size.width / 1.7,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
            autofocus: true,
            textAlign: TextAlign.start,
            controller: numb,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '        Enter Phone Number',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
          SizedBox(height: 50,),
              RaisedButton(
                color: Color(0xff16d59f),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
            padding: EdgeInsets.only(left: 40,right: 40,top: 18,bottom: 15),
            onPressed: (){
               showAlertDialogenumbercode(context);
            },
            child: Text('Send',
            style: TextStyle(color: Color(0xffffffff),
            fontSize: 17),),
          )
        ],
      ),
      ), 
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
   showAlertDialogenumbercode(BuildContext context) {
   Dialog alert = Dialog(
 backgroundColor: Colors.transparent,
      child:
      
      Container(
        height: MediaQuery.of(context).size.height*.5,
        width: MediaQuery.of(context).size.width-40,
     decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/orignalforgotpass.png'),
        fit: BoxFit.cover,
      )
      ),
      child: Column(
        children: <Widget>[
        SizedBox(height: 70,),
          Center(child: Text('Forgot Password',
           style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 19,
                fontWeight: FontWeight.bold),),),
          SizedBox(height: 30,),
          Text('Please Enter 4 Digit Code',
          style: TextStyle(
            color: Color(0xffe4eeeb),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
          ),

        Container(
        
         child: PinCodeEnterClass(),
        ),

          SizedBox(height: 50,),
              RaisedButton(
                color: Color(0xff16d59f),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
            padding: EdgeInsets.only(left: 40,right: 40,top: 18,bottom: 15),
            onPressed: (){
              newpassword=null;
              confirmpassword=null;
              showAlertDialogeconfirmpassword(context);
            },
            child: Text('Enter',
            style: TextStyle(color: Color(0xffffffff),
            fontSize: 17),),
          )
        ],
      ),
      
      ),
     
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  showAlertDialogeconfirmpassword(BuildContext context) {
   Dialog alert = Dialog(
  

 backgroundColor: Colors.transparent,
     child: 
      Container(
        height: MediaQuery.of(context).size.height*.5,
        width: MediaQuery.of(context).size.width-40,
     decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/orignalforgotpass.png'),
        fit: BoxFit.cover,
      )
      ),
      child: Column(
        children: <Widget>[
        SizedBox(height: 70,),
          Center(child: Text('Forgot Password',
           style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 19,
                fontWeight: FontWeight.bold),),),
          
          Container(
          width: MediaQuery.of(context).size.width / 1.7,
          margin: EdgeInsets.only(top: 21),
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
          FocusScope.of(context).requestFocus(confirmpasswordd),
            focusNode: newpasswordd,
            controller: newpassword,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '     Enter New Password',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
         Container(
          width: MediaQuery.of(context).size.width / 1.7,
          margin: EdgeInsets.only(top: 18),
          height: 50,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextField(
             textInputAction: TextInputAction.next,
            
            focusNode: confirmpasswordd,
            controller: confirmpassword,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '      Confirm  Password',
              hintStyle: TextStyle(
                  color: Color(0xff43b494),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
          SizedBox(height: 36,),
              RaisedButton(
                color: Color(0xff16d59f),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(05)),
            padding: EdgeInsets.only(left: 40,right: 40,top: 18,bottom: 15),
            onPressed: (){
              
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Text('Send',
            style: TextStyle(color: Color(0xffffffff),
            fontSize: 17),),
          )
        ],
      ),
      ),     
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
 
}
  

