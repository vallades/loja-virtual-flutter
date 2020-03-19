import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar conta"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Nome completo"
              ),
              validator: (text) {
                // ignore: missing_return
                if(text.isEmpty) return "Informe seu nome!";
              },
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Endereço"
              ),
              validator: (text) {
                // ignore: missing_return
                if(text.isEmpty) return "Endereço inválido!";
              },
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "E-mail"
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (text) {
                // ignore: missing_return
                if(text.isEmpty || !text.contains("@")) return "E-mail inválido!";
              },
            ),
            SizedBox(height: 16.0,),
            TextFormField(
                decoration: InputDecoration(
                    hintText: "Senha"
                ),
                obscureText: true,
                validator: (text) {
                  // ignore: missing_return
                  if(text.isEmpty || text.length < 6) return "Senha inválida!";
                }
            ),
            SizedBox(height: 16.0,),
            SizedBox(
              height: 48.0,
              child: RaisedButton(
                child: Text("Cadastrar",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: (){
                  if(_formKey.currentState.validate()) {

                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}