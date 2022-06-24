import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/ui/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.grey[50],
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    super.dispose();
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
    ).whenComplete(
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset(
                AppAssets.images.splashBackground,
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    AppAssets.images.logo,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          AppAssets.images.morty,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          AppAssets.images.rick,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
