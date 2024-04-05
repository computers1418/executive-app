import 'package:executive_app/bloc/network_bloc.dart';
import 'package:executive_app/constants/text_style.dart';
import 'package:executive_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class SendingMSG extends StatefulWidget {
  final Map data;
  const SendingMSG({Key? key, required this.data}) : super(key: key);

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
      body: BlocListener<NetworkBloc, NetworkState>(
      listener: (context, state) {
        if(state is Error){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error))
          );
        }
        if(state is Success){
          showModalBottomSheet<void>(
            context: context,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )
            ),
            builder: (BuildContext context) {
              return Container(
                // height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 24,),
                      Container(width: 60, height: 8,
                      decoration: BoxDecoration(
                        color: HexColor("#F5F5F5"),
                        borderRadius: BorderRadius.circular(30)
                      ),),
                      const SizedBox(height: 15,),
                      Text('Message Sent',
                      style: CustomFonts.aloevera28W600(
                        color: HexColor("#654CE1")
                      ),),
                      const SizedBox(height: 8,),
                       Text('${ selectedSmsTemplate.isNotEmpty ? 'Sms - 1': ''} ${ (selectedSmsTemplate.isNotEmpty && selectedVoiceTemplate.isNotEmpty) ? ',': ''} ${selectedVoiceTemplate.isNotEmpty ? 'Voice - 1' : ''} ${(selectedSmsTemplate.isNotEmpty || selectedVoiceTemplate.isNotEmpty) ? 'to ${widget.data["phone"]}' : '' } \n ${ selectedEmailTemplate.isNotEmpty ? 'Email - 1 to ${widget.data["email"]}' : '' }',
                       textAlign: TextAlign.center,
                      style: CustomFonts.aloevera14W400(
                        color: HexColor("#121019").withOpacity(.6)
                      ),),
                      const SizedBox(height: 8,),
                      Image.asset("assets/images/sent.png",
                      height: 120,),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(flex: 3,
                            child: GestureDetector(
                              onTap: ()=>Navigator.pushNamed(context, Routes.logbook),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: HexColor("#F3F1FD"),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child: Text("Go To Logbook",
                                  style: CustomFonts.aloevera16W600(
                                    color: HexColor("#654CE1")
                                  ),),
                                ),
                                ),
                            )),
                              const SizedBox(width: 8,),
                              Expanded(flex: 2,
                            child: GestureDetector(
                              onTap: ()=>Navigator.pop(context),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: HexColor("#654CE1"),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child: Text("Done",
                                  style: CustomFonts.aloevera16W600(
                                    color: HexColor("#FFFFFF")
                                  ),),
                                ),
                                ),
                            )),
                        ],
                      ),
                      const SizedBox(height: 40,),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
      child: Stack(
          alignment: Alignment.topCenter,
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
                                    if (i != 1) {
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
                                                  color: selectedSmsTemplate ==
                                                          "$i"
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
                                    if (i != 1) {
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
                                              color:
                                                  selectedEmailTemplate == "$i"
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
                                                  color:
                                                      selectedEmailTemplate ==
                                                              "$i"
                                                          ? HexColor("#654CE1")
                                                          : HexColor(
                                                              "#121019")),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  selectedEmailTemplate == "$i"
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
                                    if (i != 1) {
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
                                              color:
                                                  selectedVoiceTemplate == "$i"
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
                                                  color:
                                                      selectedVoiceTemplate ==
                                                              "$i"
                                                          ? HexColor("#654CE1")
                                                          : HexColor(
                                                              "#121019")),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  selectedVoiceTemplate == "$i"
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
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: MaterialButton(
                onPressed: ()async{

                  await showConfirmSheet(context).then(
                    (value){
                      if(value){
                        context.read<NetworkBloc>().add(SendMessage(
                            phoneNumber: widget.data["phone"],
                            email: widget.data["email"],
                            isCall: selectedVoiceTemplate.isNotEmpty,
                            isSms: selectedSmsTemplate.isNotEmpty,
                            isMail: selectedEmailTemplate.isNotEmpty));
                        }
                    });
                },
                height: 60,
                minWidth: width - 32,
                color: selectedSmsTemplate.isNotEmpty ||
                        selectedEmailTemplate.isNotEmpty ||
                        selectedVoiceTemplate.isNotEmpty
                    ? HexColor("#654CE1")
                    : Colors.grey,
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
      ),
    );
  }

  Future<bool> showConfirmSheet(BuildContext context)async{
    bool confirmed = false;
    await showModalBottomSheet<void>(
      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )
      ),
      builder: (BuildContext context) {
        return Container(
          // height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 24,),
                Container(width: 60, height: 8,
                decoration: BoxDecoration(
                  color: HexColor("#F5F5F5"),
                  borderRadius: BorderRadius.circular(30)
                ),),
                const SizedBox(height: 15,),
                Text('Are you sure to send ?',
                style: CustomFonts.aloevera28W600(
                  color: HexColor("#654CE1")
                ),),
                const SizedBox(height: 32,),
                  Text('${ selectedSmsTemplate.isNotEmpty ? 'Sms - 1': ''} ${ (selectedSmsTemplate.isNotEmpty && selectedVoiceTemplate.isNotEmpty) ? ',': ''} ${selectedVoiceTemplate.isNotEmpty ? 'Voice - 1' : ''} ${(selectedSmsTemplate.isNotEmpty || selectedVoiceTemplate.isNotEmpty) ? 'to ${widget.data["phone"]}' : '' } \n ${ selectedEmailTemplate.isNotEmpty ? 'Email - 1 to ${widget.data["email"]}' : '' }',
                  textAlign: TextAlign.center,
                style: CustomFonts.zabal16W600(
                  color: HexColor("#121019").withOpacity(.6)
                ),),
                const SizedBox(height: 16,),
                // Image.asset("assets/images/sent.png",
                // height: 120,),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(flex: 3,
                      child: GestureDetector(
                        onTap: ()=>Navigator.pop(context),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: HexColor("#F3F1FD"),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text("Back",
                            style: CustomFonts.aloevera16W600(
                              color: HexColor("#654CE1")
                            ),),
                          ),
                          ),
                      )),
                        const SizedBox(width: 8,),
                        Expanded(flex: 2,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          confirmed = true;
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: HexColor("#654CE1"),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text("Yes",
                            style: CustomFonts.aloevera16W600(
                              color: HexColor("#FFFFFF")
                            ),),
                          ),
                          ),
                      )),
                  ],
                ),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        );
      },
    );

    return confirmed;
  }

}
