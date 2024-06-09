import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService{

  void signUpUser({
    required String email,
    required String password,
    required String name
  }) async {
    try{
      User user = User(
        id: '', 
        name: '', 
        password: '', 
        email: '', 
        address: '', 
        type: '', 
        token: ''
      );

      http.post(Uri.parse('$uri/api/signup'),body: user.toJson());

    }catch(e){

    }
  }
}