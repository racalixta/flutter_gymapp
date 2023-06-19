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
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthetincationInputDecoration('Senha'),
                        obscureText: true,
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
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration:
                                  getAuthetincationInputDecoration('Nome'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
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
}
