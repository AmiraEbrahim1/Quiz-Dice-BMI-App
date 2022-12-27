import 'package:flutter/material.dart';
import 'package:session3/other/chat.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool Visible=false;
  void changeVisibility(){
    Visible=!Visible;
    setState(() {
      Visible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return'Email is Empty!';
                  }
                },
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Enter Email',
                    hintText: '....@gmail.com',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pinkAccent))),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return'Password is Empty!';
                  }
                },
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                obscureText: Visible,
                decoration: InputDecoration(
                    labelText: 'Enter Password',
                    hintText: 'password',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pinkAccent)),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: (){
                        changeVisibility();
                      },
                        child:Visible==false? Icon(Icons.visibility):Icon(Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pinkAccent))),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(onPressed: (){
                    if(formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> Chat()));
                    }
                  }, child:Text('LogIn',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),)))
            ],
          ),
        ),
      ),
    );
  }
//   Widget defaultTextField({})=>TextFormField(
// controller: ,
// keyboardType: ,
// obscureText: ,
// onTap: ,
//
// );
}
