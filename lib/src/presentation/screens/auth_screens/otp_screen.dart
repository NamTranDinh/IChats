import 'package:flutter/material.dart';
import '../../widgets/layout/auth_layouts/otp_layout/header.dart';
import '../../widgets/layout/auth_layouts/otp_layout/body.dart';
import '../../widgets/layout/auth_layouts/otp_layout/footer.dart';
import '../../../config/theme/app_color.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
