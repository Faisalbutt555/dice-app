import 'package:flutter/material.dart';
class PinCodeEnterClass extends StatefulWidget {
 @override
 _PinCodeEnterClassState createState() => _PinCodeEnterClassState();
}
class _PinCodeEnterClassState extends State<PinCodeEnterClass> {
 FocusNode node1 = FocusNode();
 FocusNode node2 = FocusNode();
 FocusNode node3 = FocusNode();
 FocusNode node4 = FocusNode();
 @override
 Widget build(BuildContext context) {
   return Container(
     width: MediaQuery.of(context).size.width,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         inputField(node1, node2),
         inputField(node2, node3),
         inputField(node3, node4),
         inputField(node4, node4),
       ],
     ),
   );
 }
 Widget inputField( FocusNode node, FocusNode nextnode ){
   return Container(
     margin: EdgeInsets.all(5),
padding: EdgeInsets.only(left: 20),
     color: Colors.white,
     width: 50,
     height: 50,
     child: TextFormField(
       decoration: InputDecoration(
         border: InputBorder.none,
         contentPadding: EdgeInsets.only(top: 15),
         counter: Container(height: 1,),
         hintText: '0',
           hintStyle: TextStyle(color: Colors.green)
       ),
       autofocus: true,
       maxLength: 1,
       keyboardType: TextInputType.phone,
       onChanged: (value){
         node.unfocus();
         FocusScope.of(context).requestFocus(nextnode);
       },
       focusNode: node,
     ),
   );
 }
}
