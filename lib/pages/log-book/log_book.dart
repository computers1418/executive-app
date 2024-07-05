import 'package:executive_app/constants/text_style.dart';
import 'package:executive_app/pages/log-book/logbook_item.dart';
import 'package:flutter/material.dart';

class LogBook extends StatefulWidget {
  const LogBook({ Key? key }) : super(key: key);

  @override
  State<LogBook> createState() => _LogBookState();
}

class _LogBookState extends State<LogBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/log_frame.png"), fit: BoxFit.fill)
              ),
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Logbook', style: CustomFonts.aloevera32W700(
                        color: Colors.white
                      )),
                      const SizedBox(height: 18,),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 260,
                          maxHeight: 45
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                            filled: true,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(5),
                              child: CircleAvatar(
                              backgroundColor: const Color(0xFF3376F3 ),
                              child: Image.asset("assets/images/search.png", width: 14, height: 14,),
                            ),
                            ),
                            fillColor: Colors.white,
                            hintText: "Search",
                            hintStyle: CustomFonts.aloevera16W500(
                              color: Colors.black.withOpacity(0.3)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
      
                  Positioned(
                    top: 40, right: 20,
                    child: Image.asset('assets/images/menu.png', width: 40, height: 40,),
                  ),
                ],
              ),
            ),
      
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 20),
                children: const [
                  LogBookItem(),
                  LogBookItem(active: true, activeItem: 'sms',),
                  LogBookItem(active: true, activeItem: 'voice',)
                ],
              )),
      
            
        ],
      ),
    );
  }
}