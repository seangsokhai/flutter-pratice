import 'package:flutter/material.dart';
import '../bloc/bloc.dart';
import '../bloc/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailFeild(bloc),
          passwordFeild(bloc),
          submitButton(bloc),
        ],
      ),
    );
  }

  Widget emailFeild(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
              hintText: 'you@email.com',
              labelText: 'Enter your Email',
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget passwordFeild(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            hintText: 'passwords',
            labelText: 'passwords',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Log in'),
          color: Colors.blue,
          onPressed: snapshot.hasData
              ? () {
                  print('Hi, there');
                }
              : null,
        );
      },
    );
  }
}
