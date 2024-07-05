import 'package:flutter/material.dart';

import '../../constants/text_style.dart';

class ItemHeader extends StatelessWidget {
  final String active;
  final String activeItem;
  const ItemHeader({super.key, this.active='', this.activeItem = ''});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 135,
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(top: 15, left: 45, right: 20, bottom: 8),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage( activeItem!="sms"
                          ? 'assets/images/logbook_frame_item2.png'
                          : 'assets/images/logbook_item_frame3.png'),
                          fit: BoxFit.fill
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("SMS", style: CustomFonts.aloevera16W600(color: activeItem=='sms'? const Color(0xFF3376F3): Colors.white)),
                          Icon(Icons.keyboard_arrow_down_rounded, color: activeItem=='sms'? const Color(0xFF3376F3): Colors.white,)
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      height: 135,
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(top: 15, left: 35, right: 0, bottom: 8),
                      decoration: BoxDecoration(
                        image: DecorationImage(image:  AssetImage( activeItem!="voice"
                          ? 'assets/images/logbook_frame_item2.png'
                          : 'assets/images/logbook_item_frame3.png'),
                          fit: BoxFit.fill
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Voice", style: CustomFonts.aloevera16W600(color: activeItem=='voice'? const Color(0xFF3376F3): Colors.white)),
                          Icon(Icons.keyboard_arrow_down_rounded, color: activeItem=='voice'? const Color(0xFF3376F3): Colors.white,)
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                      height: 135,
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(top: 15, left: 35, right: 0, bottom: 8),
                      decoration: BoxDecoration(
                        image: DecorationImage(image:  AssetImage( activeItem!="email"
                          ? 'assets/images/logbook_frame_item2.png'
                          : 'assets/images/logbook_item_frame3.png'),
                          fit: BoxFit.fill
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email", style: CustomFonts.aloevera16W600(color:
                            activeItem=='email'? const Color(0xFF3376F3): Colors.white)),
                          Icon(Icons.keyboard_arrow_down_rounded, color: activeItem=='email'? const Color(0xFF3376F3): Colors.white,)
                        ],
                      ),
                    )
                  ),
                ],
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/logbook_item_frame1.png'),
                    fit: BoxFit.fill
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withOpacity(0.1)
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/phone.png', width: 12, height: 12,),
                              Text("+91 90876 54321", style: CustomFonts.aloevera10W600(color: Colors.white))
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.1)
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/calendar.png', width: 12, height: 12,),
                                  Text("24 Feb", style: CustomFonts.aloevera10W600(color: Colors.white))
                                ],
                              ),
                            ),

                            const SizedBox(width: 2,),

                            Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.1)
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/time.png', width: 12, height: 12,),
                                  Text("10:00 AM", style: CustomFonts.aloevera10W600(color: Colors.white))
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withOpacity(0.1)
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/at.png', width: 12, height: 12,),
                              Text("Charlie99@gmail.com", style: CustomFonts.aloevera10W600(color: Colors.white))
                            ],
                          ),
                        ),

                        Column(
                          children: [
                            Text("User ID : 12JDWKT993K00", style: CustomFonts.aloevera10W600(color: Colors.white)),
                            Image.asset('assets/images/underline.png', width: 124,),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
  }
}