import 'package:flutter/material.dart';
import 'package:ride/componet/verificatio_model/longin_creen/login_screen.dart';
import 'package:ride/data_model/text_model.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';
import 'package:ride/utils/validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController email = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController password = TextEditingController();
  bool isPassword = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextModel(title: 'Sign Up ', subTitle: ''),
              Column(
                children: [
                  const RideText(
                    iconImage: 'assets/images/profile.png',
                    title: 'Full name',
                  ),
                  SizedBox(
                    height: getScreenHeight(20),
                  ),
                  RideText(
                    iconImage: 'assets/images/mail.png',
                    validator: (p0) => Validator.validateEmail(p0 ?? ''),
                    title: 'abc@gmail.com',
                  ),
                  SizedBox(
                    height: getScreenHeight(20),
                  ),
                  const RideText(
                    iconImage: 'assets/images/call.png',
                    title: '+123456789',
                  ),
                  SizedBox(
                    height: getScreenHeight(20),
                  ),
                  const RideText(
                    iconImage: 'assets/images/Vector.png',
                    title: 'state',
                  ),
                  SizedBox(
                    height: getScreenHeight(20),
                  ),
                  PassLogin(
                    title: 'Your password',
                    validator: (p0) => Validator.validatePassword(p0 ?? ''),
                  ),
                  SizedBox(
                    height: getScreenHeight(20),
                  ),
                  PassLogin(
                    title: 'Confirmed password',
                    validator: (p0) => Validator.validatePassword(p0 ?? ''),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(60),
                    vertical: getScreenHeight(10)),
                child: SizedBox(
                  height: getScreenHeight(58),
                  width: getScreenWidth(271),
                  child: FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                          if (mounted) {
                          //  Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          //     builder: (context) =>
                          //          LoginScreen()));
                        }
                      }

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginScreen()));
                    },
                    backgroundColor: kPRYCOLOUR,
                    child: Padding(
                      padding: EdgeInsets.only(left: getScreenWidth(70)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getScreenHeight(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign up",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getScreenHeight(17),
                                      color: kWHTCOLOUR),
                            ),
                            Container(
                                height: getScreenHeight(30),
                                width: getScreenWidth(30),
                                decoration: BoxDecoration(
                                  color: kDarkRed,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_sharp,
                                  color: kWHTCOLOUR,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(
                  90,
                )),
                child: Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: getScreenHeight(13),
                          ),
                    ),
                    SizedBox(
                      width: getScreenWidth(3),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: getScreenHeight(13),
                                color: kPRYCOLOUR,
                              )),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class PassLogin extends StatelessWidget {
  const PassLogin({
    super.key,
    required this.title,
    required this.validator,
  });
  final String title;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenHeight(25)),
      child: TextFormField(
        validator: validator,
        showCursor: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(19),
                borderSide: const BorderSide(color: kTransparent)),
            prefixIcon: Image.asset('assets/images/lock.png'),
            labelText: title,
            suffix: const Icon(
              Icons.remove_red_eye_outlined,
              color: kPRYCOLOUR,
            )),
      ),
    );
  }
}

class RideText extends StatelessWidget {
  const RideText(
      {super.key,
      required this.title,
      required this.iconImage,
      this.validator,
      //required this.controller,
      // required this.hintText,
      this.enable = true,
      this.keyboardType,
      this.obscureText = false,
      this.onEditingComplete,
      this.suffixIcon,
      this.onChange,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.icon,
      this.textAlign});

  final String title;
  final String iconImage;
  final String? Function(String?)? validator;
  //final TextEditingController controller;
// final String hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool enable, obscureText;
  final Function()? onEditingComplete;
  final Function(String)? onChange;
  final Widget? icon;
  final AutovalidateMode autovalidateMode;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(25), vertical: getScreenHeight(2)),
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.start,
        // controller: controller,
        obscureText: obscureText,
        onEditingComplete: onEditingComplete,
        onChanged: onChange,
        enabled: enable,
        validator: validator,
        showCursor: true,
        decoration: InputDecoration(
            fillColor: kTEXTFIELDBACKGROUND,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(19),
                borderSide: const BorderSide(color: kTransparent)),
            prefixIcon: Image.asset(iconImage),
            labelText: title,
            suffix: const Icon(
              Icons.close_sharp,
              color: kPRYCOLOUR,
            )),
      ),
    );
  }
}
