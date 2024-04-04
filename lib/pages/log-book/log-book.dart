import 'package:executive_app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LogBook extends StatefulWidget {
  const LogBook({ Key? key }) : super(key: key);

  @override
  State<LogBook> createState() => _LogBookState();
}

class _LogBookState extends State<LogBook> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
      width: double.infinity,
        child: Stack(alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/bg.png",
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              fit: BoxFit.fill,
              ),
            Image.asset("lib/pages/log-book/assets/bg.png"),
            Positioned(bottom: 0,
              child: Image.asset("lib/pages/log-book/assets/bg2.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .8,)),
              Positioned(left: 20,
                top: MediaQuery.of(context).size.height * .125,
                                  child: Text("Log Book",
                  style: CustomFonts.aloevera32W700(
                    color: Colors.white
                  ),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * .2 + 20,),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //-------------------------24 Feb---------------------------------
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Today, 24 Feb",
                                      style: CustomFonts.zabal13W600(),),
                                      Text("(3)",
                                      style: CustomFonts.zabal13W600(
                                        color: HexColor("#755FE5")
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(height: 8,),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#FDFDFD")
                                    ),
                                    child: Column(
                                      children: [
                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(11),
                                              height: 38, width: 38,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: HexColor("#9883FF").withOpacity(.1)
                                              ),
                                              child: Image.asset("lib/pages/sending_msg/assets/chat.png"),
                                            ),
                                            Expanded(child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("SMS Sent",
                                                    style: CustomFonts.zabal16W500(),),
                                                    Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 1",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text("10:00 AM",style: CustomFonts.zabal8W500(),),
                                          ],
                                        ),
                                        const SizedBox(height: 16,),
                                        Divider(color: HexColor("#E7E7E8").withOpacity(.5),),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/phone.png",
                                                  height: 11, width: 11,),
                                                  Text(" +919087654321",
                                                  style: CustomFonts.zabal11W500(
                                                    color: HexColor("#121019").withOpacity(.6)
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/mail.png",
                                                  height: 11, width: 11,),
                                                  Text(" Charlie99@gmail.com",
                                                  style: CustomFonts.zabal11W500(
                                                    color: HexColor("#121019").withOpacity(.6)
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#FDFDFD")
                                    ),
                                    child: Column(
                                      children: [
                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(11),
                                              height: 38, width: 38,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: HexColor("#9883FF").withOpacity(.1)
                                              ),
                                              child: Image.asset("lib/pages/sending_msg/assets/chat.png"),
                                            ),
                                            Expanded(child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("SMS, Email and Voice Sent",
                                                    style: CustomFonts.zabal16W500(),),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 22,
                                                          width: 60,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: HexColor("#755FE5"),
                                                          ),
                                                          child: Center(
                                                            child: Text("Temp 3",
                                                            style: CustomFonts.zabal10W600(
                                                              color: Colors.white
                                                            ),),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 4,),
                                                        Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 2",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4,),
                                                    Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 4",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text("10:00 AM",style: CustomFonts.zabal8W500(),),
                                          ],
                                        ),
                                        const SizedBox(height: 16,),
                                        Divider(color: HexColor("#E7E7E8").withOpacity(.5),),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/phone.png",
                                                  height: 11, width: 11,),
                                                  Text(" +919087654321",
                                                  style: CustomFonts.zabal11W500(
                                                    color: HexColor("#121019").withOpacity(.6)
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/mail.png",
                                                  height: 11, width: 11,),
                                                  Text(" Charlie99@gmail.com",
                                                  style: CustomFonts.zabal11W500(
                                                    color: HexColor("#121019").withOpacity(.6)
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#FDFDFD")
                                    ),
                                    child: Column(
                                      children: [
                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(11),
                                              height: 38, width: 38,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: HexColor("#9883FF").withOpacity(.1)
                                              ),
                                              child: Image.asset("lib/pages/sending_msg/assets/chat.png"),
                                            ),
                                            Expanded(child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("SMS and Email Sent",
                                                    style: CustomFonts.zabal16W500(),),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 22,
                                                          width: 60,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: HexColor("#755FE5"),
                                                          ),
                                                          child: Center(
                                                            child: Text("Temp 2",
                                                            style: CustomFonts.zabal10W600(
                                                              color: Colors.white
                                                            ),),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 4,),
                                                        Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 1",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text("10:00 AM",style: CustomFonts.zabal8W500(),),
                                          ],
                                        ),
                                        const SizedBox(height: 16,),
                                        Divider(color: HexColor("#E7E7E8").withOpacity(.5),),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/phone.png",
                                                  height: 11, width: 11,),
                                                  Text(" +919087654321",
                                                  style: CustomFonts.zabal11W500(
                                                    color: HexColor("#121019").withOpacity(.6)
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/mail.png",
                                                  height: 11, width: 11,),
                                                  Text(" Charlie99@gmail.com",
                                                  style: CustomFonts.zabal11W500(
                                                    color: HexColor("#121019").withOpacity(.6)
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  //------------------------23 Feb----------------------------------
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("23 Feb",
                                      style: CustomFonts.zabal13W600(),),
                                      Text("(3)",
                                      style: CustomFonts.zabal13W600(
                                        color: HexColor("#755FE5")
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(height: 8,),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#FDFDFD")
                                    ),
                                    child: Column(
                                      children: [
                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(11),
                                              height: 38, width: 38,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: HexColor("#9883FF").withOpacity(.1)
                                              ),
                                              child: Image.asset("lib/pages/sending_msg/assets/chat.png"),
                                            ),
                                            Expanded(child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("SMS Sent",
                                                    style: CustomFonts.zabal16W500(),),
                                                    Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 1",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text("10:00 AM",style: CustomFonts.zabal8W500(),),
                                          ],
                                        ),
                                        const SizedBox(height: 16,),
                                        Divider(color: HexColor("#E7E7E8").withOpacity(.5),),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/phone.png",
                                                  height: width * 0.03, width: width * 0.03,),
                                                  Text("  +91 90876 54321",
                                                  style: TextStyle(
                                                    fontSize: width * 0.03,
                                                    color: HexColor("#121019").withOpacity(.6),
                                                    fontFamily: 'ZabalDEMO'
                                                  ))
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/mail.png",
                                                  height: width * 0.03, width: width * 0.03,),
                                                  Text("  Charlie99@gmail.com",
                                                  style: TextStyle(
                                                    fontSize: width * 0.03,
                                                    color: HexColor("#121019").withOpacity(.6),
                                                    fontFamily: 'ZabalDEMO'
                                                  ))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#FDFDFD")
                                    ),
                                    child: Column(
                                      children: [
                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(11),
                                              height: 38, width: 38,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: HexColor("#9883FF").withOpacity(.1)
                                              ),
                                              child: Image.asset("lib/pages/sending_msg/assets/chat.png"),
                                            ),
                                            Expanded(child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("SMS, Email and Voice Sent",
                                                    style: CustomFonts.zabal16W500(),),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 22,
                                                          width: 60,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: HexColor("#755FE5"),
                                                          ),
                                                          child: Center(
                                                            child: Text("Temp 3",
                                                            style: CustomFonts.zabal10W600(
                                                              color: Colors.white
                                                            ),),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 4,),
                                                        Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 2",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4,),
                                                    Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 4",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text("10:00 AM",style: CustomFonts.zabal8W500(),),
                                          ],
                                        ),
                                        const SizedBox(height: 16,),
                                        Divider(color: HexColor("#E7E7E8").withOpacity(.5),),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/phone.png",
                                                  height: width * 0.03, width: width * 0.03,),
                                                  Text(" +919087654321",
                                                  style: TextStyle(
                                                    fontSize: width * 0.03,
                                                    color: HexColor("#121019").withOpacity(.6),
                                                    fontFamily: 'ZabalDEMO'
                                                  ))
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/mail.png",
                                                  height: width * 0.03, width: width * 0.03,),
                                                  Text("  Charlie99@gmail.com",
                                                  style: TextStyle(
                                                    fontSize: width * 0.03,
                                                    color: HexColor("#121019").withOpacity(.6),
                                                    fontFamily: 'ZabalDEMO'
                                                  ))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#FDFDFD")
                                    ),
                                    child: Column(
                                      children: [
                                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(11),
                                              height: 38, width: 38,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: HexColor("#9883FF").withOpacity(.1)
                                              ),
                                              child: Image.asset("lib/pages/sending_msg/assets/chat.png"),
                                            ),
                                            Expanded(child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("SMS and Email Sent",
                                                    style: CustomFonts.zabal16W500(),),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 22,
                                                          width: 60,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25),
                                                            color: HexColor("#755FE5"),
                                                          ),
                                                          child: Center(
                                                            child: Text("Temp 2",
                                                            style: CustomFonts.zabal10W600(
                                                              color: Colors.white
                                                            ),),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 4,),
                                                        Container(
                                                      height: 22,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        color: HexColor("#755FE5"),
                                                      ),
                                                      child: Center(
                                                        child: Text("Temp 1",
                                                        style: CustomFonts.zabal10W600(
                                                          color: Colors.white
                                                        ),),
                                                      ),
                                                    ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Text("10:00 AM",style: CustomFonts.zabal8W500(),),
                                          ],
                                        ),
                                        const SizedBox(height: 16,),
                                        Divider(color: HexColor("#E7E7E8").withOpacity(.5),),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/phone.png",
                                                  height: width * 0.03, width: width * 0.03,),
                                                  Text(" +919087654321",
                                                  style: TextStyle(
                                                    fontSize: width * 0.03,
                                                    color: HexColor("#121019").withOpacity(.6),
                                                    fontFamily: 'ZabalDEMO'
                                                  ))
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Image.asset("lib/pages/details/assets/mail.png",
                                                  height: width * 0.03, width: width * 0.03,),
                                                  Text(" Charlie99@gmail.com",
                                                  style: TextStyle(
                                                    fontSize: width * 0.03,
                                                    color: HexColor("#121019").withOpacity(.6),
                                                    fontFamily: 'ZabalDEMO'
                                                  ))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}