import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_common/my_colors.dart';
import 'package:flutter_gymapp/components/decoration_input_auth.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool wantEntry = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.azulTopoGradiente,
                  MyColors.azulBaixoGradiente,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        "assets/dumbbell.png",
                        height: 128,
                      ),
                      const Text(
                        "GymApp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: getAuthetincationInputDecoration('E-mail'),
                        validator: (String? value) {
                          if (value == null) {
                            return 'O campo e-mail não pode ser vazio.';
                          } else if (value.length < 5) {
                            return 'O e-mail é muito curto.';
                          } else if (!value.contains('@')) {
                            return 'Digite um e-mail válido.';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthetincationInputDecoration('Senha'),
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null) {
                            return 'O campo senha não pode ser vazio.';
                          } else if (value.length < 6) {
                            return 'A senha precisa ter mais que 6 digitos.';
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                        visible: !wantEntry,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthetincationInputDecoration(
                                  'Confirme Senha'),
                              obscureText: true,
                              validator: (String? value) {
                                if (value == null) {
                                  return 'O campo confirma senha não pode ser vazio.';
                                } else if (value.length < 6) {
                                  return 'A senha precisa ter mais que 6 digitos.';
                                }

                                return null;
                              },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration:
                                  getAuthetincationInputDecoration('Nome'),
                              validator: (String? value) {
                                if (value == null) {
                                  return 'O campo nome não pode ser vazio.';
                                } else if (value.length < 3) {
                                  return 'O nome precisa ter mais que 3 letras.';
                                }

                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          mainButtonCLick();
                        },
                        child: Text((wantEntry) ? "Entrar" : "Cadastrar"),
                      ),
                      // const Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            wantEntry = !wantEntry;
                          });
                        },
                        child: Text((wantEntry)
                            ? "Ainda não tem uma conta? Cadastre-se aqui!"
                            : "Já possui uma conta? Clique aqui para entrar!"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  mainButtonCLick() {
    if (_formKey.currentState!.validate()) {
      print('form valido');
    } else {
      print('form INvalido');
    }
  }
}
