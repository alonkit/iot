library authantication;

import 'package:application/screens/Avatar/avatar.dart';
import 'package:application/screens/Avatar/give_money.dart';
import 'package:application/screens/login/homescreen.dart';
import 'package:application/screens/login/password.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../services/auth_services.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class PreDesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PreDesignState();
  }
}

class _PreDesignState extends State<PreDesign> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.deepPurpleAccent;
    }
    return Colors.deepPurpleAccent;
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context){
          return Scaffold(
              body: Stack(children: [
                Positioned(
                    left: -((0.8125 * MediaQuery.of(context).size.height) -
                        MediaQuery.of(context).size.width) /
                        2,
                    top: -0.1 * MediaQuery.of(context).size.height,
                    child: Container(
                        width: 0.8125 * MediaQuery.of(context).size.height,
                        height: 0.8125 * MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(
                              0xfffce8ee,
                            )))),
                Positioned(
                    right: 32,
                    top: 97,
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "???????? ???????? ???? ???????? ????????",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: GoogleFonts.assistant(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),

                                //,"??????, ?????????????????? ???? ???????????? ???????? ??????????. n\???? ???? ?????? ???????? ???????? ?????? - n\??????, ??????????/?? ?????? ???? ???????? ???????? n\n\n\n\n\???????????? ??????????????????. n\???? ??????????/?? ?????? ???? ???????? ?????????? "
                              ),
                              Container(
                                height: 20,
                              ),
                              Text(
                                "?????????? ?????????? ?????????? ??????????????????,\n?????????? ???????? ???????? ?????????????? \n???????????? ???? ???????????? ??????????????",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.assistant(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                height: 5,
                              ),
                              Text(
                                "?????? ???????????? ???????????? ???? ?????????? ????????,\n?????????? ?????????? ???????? ?????????? ????????????",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: GoogleFonts.assistant(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                height: 5,
                              ),
                              Container(
                                width: 313,
                                height: 2,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0x2d34248a),
                                    width: 1,
                                  ),
                                ),
                              ),
                              Container(
                                height: 5,
                              ),

                            ]))),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.9-176,
                    right: MediaQuery.of(context).size.width / 2 - 100,
                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                      FittedBox(
                        child: Image.asset('images/shibi_pages/gangster.png'),
                        fit: BoxFit.fitHeight,
                      ),

          Container(
          height: 16,),
                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.6,
                          right: MediaQuery.of(context).size.width / 2 - 100,
                          child: Stack(children: [

                            Container(
                                width: 200,
                                height: 39,
                                child: MaterialButton(
                                    onPressed: () {
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Money(to_give: 10,first:true)));
                                    },
                                    minWidth: 200,
                                    height: 39,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(36)),
                                    color: Color(0xff35258a),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                        top: 5,
                                        right: 25,
                                        child: Text(
                                          "???????? ??????????!",
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.assistant(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      )
                                    ]))),
                            Positioned(
                                top: 5,
                                right: 165,
                                child: Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.white, width: 9),
                                    ))),
                          ]))

                    ])),

              ]));
        },
      )
    );
  }
}
