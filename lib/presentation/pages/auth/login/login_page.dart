import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nonton_app/domain/usecases/login/login_usecase.dart';
import 'package:nonton_app/presentation/pages/main/main_page.dart';
import 'package:nonton_app/presentation/providers/usecase/login_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            // decoration: BoxDecoration(),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              LoginUsecase login = ref.watch(loginUsecaseProvider);

              login(LoginParams(
                      email: 'yafiazka19@gmail.com', password: '12345678'))
                  .then((result) {
                if (result.isSuccess) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainPage(
                                user: result.resultValue!,
                              )));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(result.errorMessage!)));
                }
              });
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
