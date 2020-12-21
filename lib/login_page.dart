import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Instagram Clon',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
            ),
            SignInButton(Buttons.Google,
                onPressed: () {
                  _handleSignIn()
                      .then((FirebaseUser user) => print(user));
              },
            )
          ],
        ),
      ),
    );
  }

  Future<FirebaseUser> _handleSignIn() async{
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    print("sign in " + user.displayName);
    return user;
  }
}
