import 'package:ewallet/Screens/home_screen.dart';
import 'package:ewallet/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgoundColor,
      body: LoginPageBody(),
    );
  }
}

class LoginPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      child: Row(
        children: <Widget>[
          Container(
              height: size.height,
              color: Colors.white,
              width: size.width * 0.3,
              child: SvgPicture.asset(
                "images/design.svg",
                fit: BoxFit.fill,
              )),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: size.width * 0.4,
                          height: size.height * 0.07,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "06:20 PM",
                                    style: TextStyle(
                                      color: whiteTextcolor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "images/cloud.svg",
                                  ),
                                  Text(
                                    "34° C",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: whiteTextcolor),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Text(
                                "Nov.10.2020 | Wednesday",
                                style: TextStyle(
                                    color: GeryTextcolor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.2,
                        ),
                        Container(
                          width: size.width * 0.4,
                          height: size.height * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SvgPicture.asset("images/second.svg"),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text("eWalle",
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 28,
                                      color: whiteTextcolor,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                'Open An Account For Digital E-Wallet Solutions.Instant Payouts.\n Join For Free.',
                                style: TextStyle(
                                    color: GeryTextcolor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.2,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home())),
                          child: Container(
                              width: size.width * 0.5,
                              height: size.height * 0.06,
                              decoration: BoxDecoration(
                                  color: yellowColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  SvgPicture.asset(
                                    "images/arrow.svg",
                                    width: 14,
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          "Create an account",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: whiteTextcolor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
