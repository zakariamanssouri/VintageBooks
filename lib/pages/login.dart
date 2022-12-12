// ignore_for_file: avoid_print, non_constant_identifier_names, sized_box_for_whitespace
import 'package:book_shop/pages/home.dart';
import 'package:book_shop/theme/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserLogin extends StatefulWidget {
  static String Route = "/login";

  const UserLogin({Key? key}) : super(key: key);
  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rememberMeController = TextEditingController();
  // UserService userService = UserService();
  // LocalAuthentication localAuthentication = LocalAuthentication();
  // bool? Canscan;
  bool isChecked = false;
  bool validInfos = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  heroTag: 'settings',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(),
                        ));
                  },
                  mini: true,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  hoverElevation: 0,
                  child: SvgPicture.asset("assets/images/setting_icon.svg",
                      color: primary),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset("assets/images/shape.svg", color: primary),
                    const Text("Vintage Books   ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF4F2F2),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 14),
                  controller: emailController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    enabledBorder: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    errorBorder: InputBorder.none,
                    floatingLabelStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: primary),
                    focusedBorder: InputBorder.none,
                    labelStyle: const TextStyle(
                      color: Color(0xff8E8E93),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                    labelText: 'Identifiant/Email',
                    prefixIcon: Icon(
                      Icons.person,
                      color: primary,
                      size: 18,
                    ),
                  ),
                  // validator: MultiValidator(
                  //     [RequiredValidator(errorText: 'Champs Obligatoire')]),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF4F2F2),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 14),
                  controller: passwordController,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    focusedBorder: InputBorder.none,
                    labelStyle: const TextStyle(
                      color: Color(0xff8E8E93),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                    labelText: 'Mot de Pass',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: primary,
                      size: 18,
                    ),
                  ),
                  // validator: MultiValidator([
                  //   RequiredValidator(errorText: 'Champs Obligatoire')
                  //   /*  ,EmailValidator(errorText: 'Email est invalide')*/
                  // ]),
                ),
              ),
              const SizedBox(height: 15),
              Row(children: [
                Checkbox(
                    activeColor: primary,
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        if (!isChecked) {
                          isChecked = true;
                        } else {
                          isChecked = false;
                        }
                      });
                    }),
                const Text("Remember Me ?  ",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
              ]),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    validInfos = true;
                    // var user = User(
                    //     userName: emailController.text,
                    //     password: passwordController.text);
                    // if (await UserService.login(user)) {
                    //   validInfos = true;
                    // }
                    //  var U =new User(
                    //  email:  emailController.text,
                    //  password: passwordController.text);
                    //  await userService.Login(U).then((value) => _saveToken(value));

                    //  var token = await BaseService.READTOKEN();
                    //  print('token $token');
                  }
                  if (validInfos) {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Home()));
                  } else {}
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(240, 40),
                    primary: primary),
                child: const Text(
                  'Se Connecter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(padding: EdgeInsets.all(5)),
            ],
          ),
        ),
      ),
    );
  }
}
