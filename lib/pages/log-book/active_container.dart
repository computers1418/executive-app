import 'package:executive_app/modals/report_data.dart';
import 'package:executive_app/utils.dart';
import 'package:flutter/material.dart';

import '../../constants/text_style.dart';

class ActiveContainer extends StatelessWidget {
  final String image;
  final bool show;
  final ReportData data;
  const ActiveContainer({super.key, required this.image, required this.show, required this.data});

  @override
  Widget build(BuildContext context) {
    return show
    ? Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image, width: 50, height: 50,),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("User ID 1 : ", style: CustomFonts.aloevera10W500(color: Colors.black)),
                            Text(data.uuId, style: CustomFonts.aloevera10W700(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(Utils.formatDate(data.deliveryTime), style: CustomFonts.aloevera10W700(color: Colors.black)),
                            const SizedBox(width: 6,),
                            Image.asset('assets/images/calendar_color.png', width: 12, height: 12,)
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("User ID 2 : ", style: CustomFonts.aloevera10W500(color: Colors.black)),
                            Text("-", style: CustomFonts.aloevera10W700(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(Utils.formatTime(data.deliveryTime), style: CustomFonts.aloevera10W700(color: Colors.black)),
                            const SizedBox(width: 6,),
                            Image.asset('assets/images/time_color.png', width: 12, height: 12,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
      
            ],
          ),
          const SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Text("Message", style: CustomFonts.aloevera8W600(color: Colors.black)),  
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(data.cause, style: CustomFonts.aloevera8W600(color: Colors.black.withOpacity(0.5))),
                ),
                const Icon(Icons.keyboard_arrow_up_rounded, color: Colors.black,)
              ],  
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Text("Status", style: CustomFonts.aloevera8W600(color: Colors.black)),  
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(data.status, style: CustomFonts.aloevera8W600(color: Colors.black.withOpacity(0.5))),
                ),
                const Icon(Icons.keyboard_arrow_up_rounded, color: Colors.black,)
              ],  
            ),
          ),
          const SizedBox(height: 6,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Balance : ", style: CustomFonts.aloevera10W500(color: Colors.black.withOpacity(0.5))),
                  Text("Rs.${data.amount}", style: CustomFonts.aloevera10W700(color: Colors.black)),
                ],
              ),
              Row(
                children: [
                  Text("Duration : ", style: CustomFonts.aloevera10W500(color: Colors.black.withOpacity(0.5))),
                  Text("${data.answeredDuration}s", style: CustomFonts.aloevera10W700(color: Colors.black)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF3376F3),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                children: [
                  Text("Charge : ", style: CustomFonts.aloevera10W500(color: Colors.white)),
                  Text("-", style: CustomFonts.aloevera10W700(color: Colors.white)),
                ],
              ),
              )
            ],
          ),
          const SizedBox(height: 6,),
          Row(
            children: [
              Image.asset('assets/images/alert.png', width: 13, height: 13),
              const SizedBox(width: 8,),
              Expanded(
                child: Text('Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra.', style: CustomFonts.aloevera8W600(color: Colors.black.withOpacity(0.5))),
              )
      
            ],
          )
        ],
      ),
    )
    : const SizedBox(height: 200);
  }
}