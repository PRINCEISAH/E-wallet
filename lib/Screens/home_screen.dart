import 'package:ewallet/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: BackgoundColor,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset('images/second.svg'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "eWalle",
                      style: GoogleFonts.ubuntu(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: SvgPicture.asset('images/Union.svg'),
              )
            ],
          ),
          SizedBox(
            height: 59,
          ),
          Container(
            child: Text(
              'Account Ovsssserview',
              style: TextStyle(
                  color: GeryTextcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 116,
            width: 325,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: HomebalanceContainerColor,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 25,
                  top: 26,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "20,600",
                          style: TextStyle(
                              fontSize: 24,
                              color: whiteTextcolor,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Current balance',
                          style: TextStyle(fontSize: 12, color: GeryTextcolor),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 34,
                  child: SvgPicture.asset("images/float.svg"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Send Money',
                style: TextStyle(
                  color: GeryTextcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SvgPicture.asset("images/scan.svg")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: BackgoundColor,
            height: 120,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(child: SvgPicture.asset("images/float.svg")),
                  SizedBox(
                    width: 10,
                  ),
                  UserCard(
                    name: "Mike",
                    imageUrl: "images/Mike.svg",
                  ),
                  UserCard(
                    name: "Joshpeh",
                    imageUrl: "images/Joshpen.svg",
                  ),
                  UserCard(
                    name: "Ashley",
                    imageUrl: "images/Ashley.svg",
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Services",
                style: TextStyle(
                    color: GeryTextcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SvgPicture.asset("images/filter.svg")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ServicesCard(
                name: "Send\nMoney",
                svgurl: "images/SendMoney.svg",
              ),
              ServicesCard(
                name: "Receive\nMoney",
                svgurl: "images/Rmoney.svg",
              ),
              ServicesCard(
                name: "Mobile\nPrepaid",
                svgurl: "images/Mobile.svg",
              ),
              ServicesCard(
                name: "Electricity\nBill",
                svgurl: "images/Electric.svg",
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ServicesCard(
                name: "CashBack\nOffer",
                svgurl: "images/CashBack.svg",
              ),
              ServicesCard(
                name: "Movie\nTickets",
                svgurl: "images/Movie.svg",
              ),
              ServicesCard(
                name: "Flight\nTickets",
                svgurl: "images/flight.svg",
              ),
              ServicesCard(
                name: "More\nOptions",
                svgurl: "images/more.svg",
              )
            ],
          )
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const UserCard({Key key, this.name, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 120,
      width: 100,
      decoration: BoxDecoration(
          color: HomebalanceContainerColor,
          borderRadius: BorderRadius.circular(12),
          border:
              Border.all(color: Color.fromRGBO(225, 255, 255, 0.03), width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
              backgroundColor: BackgoundColor,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: SvgPicture.asset(imageUrl))),
          SizedBox(
            height: 17,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: GeryTextcolor),
          )
        ],
      ),
    );
  }
}

class ServicesCard extends StatelessWidget {
  final String name;
  final String svgurl;

  const ServicesCard({Key key, this.name, this.svgurl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Color.fromRGBO(225, 255, 255, 0.03), width: 1)),
            width: 60,
            height: 60,
            child: SvgPicture.asset(
              svgurl,
              height: 22,
              width: 24,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: TextStyle(
                color: GeryTextcolor,
                fontSize: 10,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
