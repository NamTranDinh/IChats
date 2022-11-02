import 'package:flutter/material.dart';
import '../../widgets/layout/reset_password_page/body.dart';
import '../../widgets/layout/reset_password_page/footer.dart';
import '../../widgets/layout/reset_password_page/header.dart';
import '../../widgets/theme/app_color.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColorApp,
        body: Container(
          padding: const EdgeInsets.only(bottom: 3),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Header(),
                    Body(),
                  ],
                ),
                const Align(
                    alignment: Alignment.bottomCenter, child: Footer()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}