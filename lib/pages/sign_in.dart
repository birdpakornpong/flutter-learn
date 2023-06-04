import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sign")),
        body: SignInScreen(
          providers: [
            EmailAuthProvider(),
          ],
          actions: [
            AuthStateChangeAction<UserCreated>((context, state) {
              // userdata

              final user = state.credential.user;
              // users [uid]/(doc)
              firestore
                  .collection('users')
                  .doc(user!.uid)
                  .set({'uid': user.uid, 'email': user.email});
            })
          ],
        ));
  }
}
