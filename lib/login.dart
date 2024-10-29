
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Login',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),


      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child:Container(decoration:BoxDecoration(
                color: Colors.blueGrey,borderRadius: BorderRadius.circular(5)),
              child:    TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.mail_sharp,
                      color:Colors.white,
                    )  ),
              ),
            ),



          ),

          Padding(padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,borderRadius: BorderRadius.circular(5)
              ),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_reset_outlined,
                      color:Colors.white,
                    )  ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              if(emailController.text=='annosha@gmail.com'&&passwordController.text=='01234');

            },
            child: Container(
              height: 50,
              width: 270,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,borderRadius: BorderRadius.circular(55)
              ),

              child: Center (child:
              Text('Login',
                style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold),

              ),
              ),
            ),
          )  ],
      ),










    );




  }
}
