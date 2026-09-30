import 'dart:developer' as developer;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/i18n/strings.g.dart';
import 'package:flutter_project_1/ui/widgets/CustomButton.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

import 'AppRouter.gr.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> handleInitialRoute() async {
    // 1. 기존 토큰 체크
    final hasToken = false;

    if (hasToken)
      return;

    // 2. 토큰이 없다면 외부 브라우저 실행
    try {
      final oauthUrl = Uri.https(
          "idp.gistory.me",
          '/authorize',
          {
            "client_id": "77d2191b-a5df-4024-9f8a-b2b1c9803239",
            "redirect_uri": "http://localhost:3000/redirect",
            "response_type": "code",
            "scope": "student_id",
            "code_challenge": "",
            "code_challenge_method": "plain"
          }
      );
      final resultUrl = await FlutterWebAuth2.authenticate(
        url: oauthUrl.toString(),
        callbackUrlScheme: "my-custom-app",
      );
      developer.log(Uri.parse(resultUrl).queryParameters['code']!);
      if (mounted) {
        context.pushRoute(const MainRoute());
      }
    } catch (e) {
      // 4. 실패 시 (사용자가 취소 등) 로그인 버튼이 있는 일반 로그인 화면으로 이동
      developer.log("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomButton(label: t.account.login, onPressed: () => handleInitialRoute()),
      )
    );
  }
}