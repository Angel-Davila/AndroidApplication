import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:mvc_application/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc{

  final _authRepository = AuthRepository();

  Stream<FirebaseUser> streamFireBase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFireBase;

  Future <FirebaseUser> signIn(){
    return _authRepository.signInFirebase();

  }

  signOut(){
    _authRepository.signOut();
  }

  @override
  void dispose() {
    
  }
}