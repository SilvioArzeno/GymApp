import 'package:GymApp/Login/presentation/widgets/rounded_button.dart';
import 'package:GymApp/Login/presentation/widgets/text_field_box.dart';
import 'package:GymApp/contstants/app_images.dart';
import 'package:GymApp/main_menu/presentation/pages/main_menu_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  static const String id = "/login_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(context),
          _buildLoginForm(context),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF000000), Color(0xFFFE4001)],
              stops: [0.20, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    FocusNode emailFocus = FocusNode();
    FocusNode passwordFocus = FocusNode();
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Hero(tag: AppImagePaths.gymIcon, child: AppImages.gymIcon),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.5),
            child: Column(children: [
              LoginTextField(
                isPassword: false,
                focusNode: emailFocus,
                hintText: "Correo Electrónico",
                keyboardType: TextInputType.emailAddress,
                textStyle: TextStyle(color: Colors.black, fontSize: 22),
                onSubmit: (value) {
                  emailFocus.unfocus();
                  passwordFocus.requestFocus();
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              LoginTextField(
                isPassword: true,
                focusNode: passwordFocus,
                hintText: "Contraseña/PIN",
                textStyle: TextStyle(color: Colors.black, fontSize: 22),
              ),
              SizedBox(
                height: 50.0,
              ),
              RoundedButton(
                color: Colors.black,
                title: "Acceder a cuenta",
                style: TextStyle(color: Colors.white, fontSize: 24),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return MainMenuPage();
                          },
                          settings: RouteSettings(
                              arguments: MainMenuPage(),
                              name: MainMenuPage.id)));
                },
              )
            ]),
          ),
        ),
      ],
    );
  }
}
