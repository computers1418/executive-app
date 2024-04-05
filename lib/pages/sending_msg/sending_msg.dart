import 'package:executive_app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SendingMSG extends StatefulWidget {
  const SendingMSG({Key? key}) : super(key: key);

  @override
  State<SendingMSG> createState() => _SendingMSGState();
}

class _SendingMSGState extends State<SendingMSG> {
  String selectedSmsTemplate = "";
  String selectedEmailTemplate = "";
  String selectedVoiceTemplate = "";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Sending Message",
                      style: CustomFonts.aloevera24W600(),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: CustomFonts.zabal14W400(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Center(
                              child: Image.asset(
                                  "lib/pages/sending_msg/assets/sms.png",
                                  height: 52,
                                  color: selectedSmsTemplate.isEmpty
                                      ? HexColor("#000000").withOpacity(.3)
                                      : null))),
                      Expanded(
                          child: Center(
                              child: Image.asset(
                                  "lib/pages/sending_msg/assets/mail.png",
                                  height: 52,
                                  color: selectedEmailTemplate.isEmpty
                                      ? HexColor("#000000").withOpacity(.3)
                                      : null))),
                      Expanded(
                          child: Center(
                              child: Image.asset(
                          "lib/pages/sending_msg/assets/voice.png",
                        height: 52,
                        color: selectedVoiceTemplate.isEmpty
                            ? HexColor("#000000").withOpacity(.3)
                            : HexColor("#755FE5"),
                      ))),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: selectedSmsTemplate.isEmpty
                                ? HexColor("#F6F6F6")
                                : HexColor("#F3F1FD")),
                        child: Center(
                          child: Text(
                            "SMS",
                            style: CustomFonts.zabal16W600(
                                color: selectedSmsTemplate.isEmpty
                                    ? HexColor("#000000").withOpacity(.3)
                                    : HexColor("#755FE5")),
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: selectedEmailTemplate.isEmpty
                                ? HexColor("#F6F6F6")
                                : HexColor("#F3F1FD")),
                        child: Center(
                          child: Text(
                            "Email",
                            style: CustomFonts.zabal16W600(
                                color: selectedEmailTemplate.isEmpty
                                    ? HexColor("#000000").withOpacity(.3)
                                    : HexColor("#755FE5")),
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: selectedVoiceTemplate.isEmpty
                                ? HexColor("#F6F6F6")
                                : HexColor("#F3F1FD")),
                        child: Center(
                          child: Text(
                            "Voice",
                            style: CustomFonts.zabal16W600(
                                color: selectedVoiceTemplate.isEmpty
                                    ? HexColor("#000000").withOpacity(.3)
                                    : HexColor("#755FE5")),
                          ),
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "SMS Templates",
                    style: CustomFonts.zabal16W600(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: HexColor("#F8F7FE")),
                    child: Column(
                      children: [
                        for (int i = 1; i <= 4; i++)
                          Column(
                            children: [
                              InkWell(
                              onTap: () => setState(() {
                                if(i!=1){
                                  return;
                                }

                                if (selectedSmsTemplate == "$i") {
                                  selectedSmsTemplate = "";
                                } else {
                                  selectedSmsTemplate = "$i";
                                }
                              }),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 38,
                                        width: 38,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: selectedSmsTemplate == "$i"
                                                ? HexColor("#654CE1")
                                                : Colors.white),
                                        child: Image.asset(
                                          "lib/pages/sending_msg/assets/chat.png",
                                          color: selectedSmsTemplate == "$i"
                                              ? Colors.white
                                              : null,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Text(
                                            "Template $i",
                                            style: CustomFonts.zabal16W500(
                                                color: selectedSmsTemplate == "$i"
                                                    ? HexColor("#654CE1")
                                                    : HexColor("#121019")),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 14,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: selectedSmsTemplate == "$i"
                                                ? HexColor("#654CE1")
                                                : HexColor("#9883FF")
                                                    .withOpacity(.5)),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              if (i < 4)
                                Divider(
                                  color: HexColor("#E7E7E8"),
                                  thickness: 1,
                                )
                            ],
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Email Templates",
                    style: CustomFonts.zabal16W600(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: HexColor("#F8F7FE")),
                    child: Column(
                      children: [
                        for (int i = 1; i <= 4; i++)
                          Column(
                            children: [
                              InkWell(
                            onTap: () => setState(() {
                              if(i!=1){
                                  return;
                                }

                              if (selectedEmailTemplate == "$i") {
                                selectedEmailTemplate = "";
                              } else {
                                selectedEmailTemplate = "$i";
                              }
                            }),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 38,
                                        width: 38,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: selectedEmailTemplate == "$i"
                                                ? HexColor("#654CE1")
                                                : Colors.white),
                                        child: Image.asset(
                                          "lib/pages/sending_msg/assets/email.png",
                                          color: selectedEmailTemplate == "$i"
                                              ? Colors.white
                                              : null,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Text(
                                            "Template $i",
                                            style: CustomFonts.zabal16W500(
                                                color: selectedEmailTemplate == "$i"
                                                    ? HexColor("#654CE1")
                                                    : HexColor("#121019")),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 14,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: selectedEmailTemplate == "$i"
                                                ? HexColor("#654CE1")
                                                : HexColor("#9883FF")
                                                    .withOpacity(.5)),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              if (i < 4)
                                Divider(
                                  color: HexColor("#E7E7E8"),
                                  thickness: 1,
                                )
                            ],
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Voice Templates",
                    style: CustomFonts.zabal16W600(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: HexColor("#F8F7FE")),
                    child: Column(
                      children: [
                        for (int i = 1; i <= 4; i++)
                          Column(
                            children: [
                              InkWell(
                            onTap: () => setState(() {
                              if(i!=1){
                                  return;
                                }

                              if (selectedVoiceTemplate == "$i") {
                                selectedVoiceTemplate = "";
                              } else {
                                selectedVoiceTemplate = "$i";
                              }
                            }),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 38,
                                        width: 38,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: selectedVoiceTemplate == "$i"
                                                ? HexColor("#654CE1")
                                                : Colors.white),
                                        child: Image.asset(
                                          "lib/pages/sending_msg/assets/voice-sm.png",
                                          color: selectedVoiceTemplate == "$i"
                                              ? Colors.white
                                              : null,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Text(
                                            "Template $i",
                                            style: CustomFonts.zabal16W500(
                                                color: selectedVoiceTemplate == "$i"
                                                    ? HexColor("#654CE1")
                                                    : HexColor("#121019")),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        width: 14,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: selectedVoiceTemplate == "$i"
                                                ? HexColor("#654CE1")
                                                : HexColor("#9883FF")
                                                    .withOpacity(.5)),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              if (i < 4)
                                Divider(
                                  color: HexColor("#E7E7E8"),
                                  thickness: 1,
                                )
                            ],
                          )
                      ],
                    ),
                  ),
                  const SizedBox(height: 100,),
                ],
              ),
            ),
          ),
          Positioned(bottom: 20,
                child: MaterialButton(
                      onPressed: () {},
                      height: 60,
                      minWidth: width - 32,
                      color: selectedSmsTemplate.isNotEmpty 
                        || selectedEmailTemplate.isNotEmpty
                        || selectedVoiceTemplate.isNotEmpty ?
                      HexColor("#654CE1") : Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Send Message",
                        style: CustomFonts.zabal18W600(color: Colors.white),
                      ),
                    ),
              ),
        ],
      ),
    );
  }
}
