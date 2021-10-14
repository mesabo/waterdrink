import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:waterdrink/app/data/controllers/common_controllers.dart';
import 'package:waterdrink/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final pinPutFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _pinPutController = TextEditingController();
  final _pageController = PageController();

  BoxDecoration get pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: onlySelectedBorderPinPut());
  }

  Widget onlySelectedBorderPinPut() {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: const Color.fromRGBO(235, 236, 237, 1),
      borderRadius: BorderRadius.circular(5.0),
    );
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onLongPress: () {
              print(_formKey.currentState!.validate());
            },
            child: PinPut(
              validator: (s) {
                if (s!.contains('1')) return null;
                return 'NOT VALID';
              },
              useNativeKeyboard: false,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              withCursor: true,
              fieldsCount: 5,
              fieldsAlignment: MainAxisAlignment.spaceAround,
              textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
              eachFieldMargin: EdgeInsets.all(0),
              eachFieldWidth: 45.0,
              eachFieldHeight: 55.0,
              onSubmit: (String pin) {},
              focusNode: pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration.copyWith(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(160, 215, 220, 1),
                ),
              ),
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.scale,
            ),
          ),
          SizedBox(height: 30),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(40),
            physics: NeverScrollableScrollPhysics(),
            children: [
              /// 1
              RoundedButton(
                title: '1',
                color: Colors.grey,
                onTap: () {
                  print(1);
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;

                  _pinPutController.text = '${_pinPutController.text}1';
                  print(_pinPutController.text);
                },
              ),

              /// 2
              RoundedButton(
                title: '2',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}2';
                  print(_pinPutController.text);
                },
              ),

              /// 3
              RoundedButton(
                title: '3',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}3';
                  print(_pinPutController.text);
                },
              ),

              /// 4
              RoundedButton(
                title: '4',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}4';
                  print(_pinPutController.text);
                },
              ),

              /// 5
              RoundedButton(
                title: '5',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}5';
                  print(_pinPutController.text);
                },
              ),

              /// 6
              RoundedButton(
                title: '6',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}6';
                  print(_pinPutController.text);
                },
              ),

              /// 7
              RoundedButton(
                title: '7',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}7';
                  print(_pinPutController.text);
                },
              ),

              /// 8
              RoundedButton(
                title: '8',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}8';
                  print(_pinPutController.text);
                },
              ),

              /// 9
              RoundedButton(
                title: '9',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}9';
                  print(_pinPutController.text);
                },
              ),

              /// CLEAR
              RoundedButton(
                title: '⌫',
                color: Colors.deepOrangeAccent,
                onTap: () {
                  if (_pinPutController.text.isNotEmpty) {
                    _pinPutController.text = _pinPutController.text
                        .substring(0, _pinPutController.text.length - 1);
                  }
                },
              ),

              /// 0
              RoundedButton(
                title: '0',
                color: Colors.grey,
                onTap: () {
                  print(_pinPutController.text);
                  if (_pinPutController.text.length >= 5) return;
                  _pinPutController.text = '${_pinPutController.text}0';
                  print(_pinPutController.text);
                },
              ),

              /// VALIDATE
              RoundedButton(
                title: 'OK',
                color: Colors.green,
                onTap: () {
                  if (_pinPutController.text.length == 5) {
                    Get.offAllNamed(Routes.HOME);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final title;
  final color;
  final onTap;

  RoundedButton(
      {this.title,
      this.onTap,
      this.color = const Color.fromRGBO(25, 21, 99, 1)});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        alignment: Alignment.center,
        child: Text(
          '$title',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
