import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:curie_desktop/src/services/app_exception_service.dart';
import 'package:flutter/material.dart';

handleError({
  required error,
  required BuildContext context,
}) {
  if (error is BadRequestException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is FetchDataException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is ApiNotRespondingAppException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is ForbiddenRequestException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is UnAuthorizedException) {
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\rRequisição não autorizada',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else {
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro desconhecido.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  }
}

void handleErrorLogin({
  required dynamic error,
  required BuildContext context,
}) {
  if (error is BadRequestException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is FetchDataException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is ApiNotRespondingAppException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is UnAuthorizedException) {
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Usuário e/ou Senha incorreto(s)!',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else if (error is ForbiddenRequestException) {
    final String? message = error.message;
    if (message != null) {
      AwesomeDialog(
              width: 400,
              showCloseIcon: false,
              dismissOnTouchOutside: false,
              buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Erro',
              desc: message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  } else {
    AwesomeDialog(
            width: 400,
            showCloseIcon: false,
            dismissOnTouchOutside: false,
            buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Erro',
            desc: 'Ocorreu um erro.\nPor favor, tente novamente.',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  }
}
