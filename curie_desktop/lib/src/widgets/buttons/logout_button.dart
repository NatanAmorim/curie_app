import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Encerrar sessão',
      child: IconButton(
        icon: const Icon(
          Icons.logout,
        ),
        onPressed: () => AwesomeDialog(
          width: 400,
          showCloseIcon: false,
          dismissOnTouchOutside: false,
          buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
          context: context,
          dialogType: DialogType.QUESTION,
          headerAnimationLoop: false,
          animType: AnimType.BOTTOMSLIDE,
          title: 'Encerrar sessão.',
          desc: 'Tem certeza?',
          buttonsTextStyle: const TextStyle(color: Colors.black, fontSize: 24),
          btnCancelText: 'Não',
          btnCancelOnPress: () {},
          btnOkText: 'Sim',
          btnOkOnPress: () {
            // Navigator.pushNamedAndRemoveUntil(
            //   context,
            //   LoginScreen.routeName,
            //   (Route<dynamic> route) => false,
            // );
          },
        ).show(),
      ),
    );
  }
}
