import 'package:flutter/material.dart';
import 'package:mvc_application/widgets/gradient_background.dart';
import 'package:mvc_application/widgets/generic_button.dart';
import 'package:mvc_application/User/bloc/user_bloc.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:mvc_application/app_cupertino.dart';

class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleUserSession();
  }
  Widget _handleUserSession(){
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(!snapshot.hasData || snapshot.hasError){
            print(snapshot.data);
            return SignInGoogleUI();
          }else{
            return AppsCupertino();
          }
        }
    );
  }


  // ignore: non_constant_identifier_names
  Widget SignInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBackground("", null),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome\nThis Is Your Traveling App",
                style: TextStyle(
                  fontFamily: "SawarabiGothic",
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
                GenericButton(buttonText: "Login with Gmail", onPressed: (){
                  userBloc.signOut();
                  userBloc.signIn();
                  },
                  width: null,
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}