import 'package:executive_app/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(height: MediaQuery.of(context).size.height,
        width: double.infinity,
          child: Stack(alignment: Alignment.topCenter,
            children: [
              Image.asset("assets/images/bg.png",
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Image.asset("lib/pages/details/assets/details-bg-1.png"),
              Positioned(bottom: 0,
                child: Stack(alignment: Alignment.topCenter,
                  children: [
                    Image.asset("lib/pages/details/assets/details-bg-2.png",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .6,),
                    Positioned(bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text("Details",
                      style: CustomFonts.aloevera40W600(),),
                      const SizedBox(height: 20,),
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width - 32,
                        decoration: BoxDecoration(
                          color: HexColor("#FDFDFD"),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: [
                            Expanded(child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Container(height: 38, width: 38,
                                  padding: const EdgeInsets.all(11),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor("#9883FF").withOpacity(.1)
                                    ),
                                    child: Image.asset("lib/pages/details/assets/phone.png")),
                                ),
                                Expanded(child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(right: 12),
                                      border: InputBorder.none,
                                      hintText: "phone number",
                                      hintStyle: CustomFonts.zabal16W500(
                                        color: HexColor("#121019").withOpacity(.5)
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: Divider(color: HexColor("#E7E7E8").withOpacity(.5),
                               height: 2,),
                             ),
                            Expanded(child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Container(height: 38, width: 38,
                                  padding: const EdgeInsets.all(11),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: HexColor("#9883FF").withOpacity(.1)
                                    ),
                                    child: Image.asset("lib/pages/details/assets/mail.png")),
                                ),
                                Expanded(child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(right: 12),
                                          border: InputBorder.none,
                                          hintText: "email id",
                                          hintStyle: CustomFonts.zabal16W500(
                                            color: HexColor("#121019").withOpacity(.5)
                                          ),
                                        ),
                                      ),
                                ),
                              ],
                            )),
                            
                          ],
                        ),
                      ),
                      const SizedBox(height: 24,),
                            SizedBox(width: MediaQuery.of(context).size.width - 48,
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  MaterialButton(onPressed: (){},
                                  height: 60,
                                  minWidth: 150,
                                  color: HexColor("#121019"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: Text("Send",
                                  style: CustomFonts.zabal18W600(
                                    color: Colors.white
                                  ),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.12,)
                    ],
                  ),
                ),
              )
                  ],
                )),
              Positioned(top: MediaQuery.of(context).size.height * .225,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .1,
                  ),
                  child: Image.asset("lib/pages/details/assets/details-img.png",
                  height: 270,),
                ),
              ),
              Positioned(top: 28, left: 16,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("App for\nExecutives",
                    textAlign: TextAlign.left,
                            style: CustomFonts.zabal24W700(
                              color: Colors.white
                            ),),
                    Text("(Business Development)",
                    textAlign: TextAlign.left,
                            style: CustomFonts.zabal10W600(
                              color: Colors.white
                            ),),
                  ],
                ),
              ),
              Positioned(top: 30, right: 30,
                child: Container(
                  height: 38, width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(color: Colors.white)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("View Log Book  ",
                      style: CustomFonts.zabal12W600(
                        color: Colors.white
                      ),),
                      const Icon(Icons.arrow_forward_outlined,
                      color: Colors.white,
                      size: 16,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}