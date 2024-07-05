import 'package:flutter/material.dart';

import '../../constants/text_style.dart';

class LogListItem extends StatelessWidget {
  final String image;
  const LogListItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: 50, height: 50,),
        const SizedBox(width: 10,),
        Expanded(child: Column(
          children: [
            Row(
              children: [
                Text("Message : ", style: CustomFonts.aloevera10W700(color: Colors.black)),
                Expanded(
                  child: Text("Gorem ipsum dolor sit amet, consectetur adipiscing elit.", overflow: TextOverflow.ellipsis, style: CustomFonts.aloevera10W500(color: Colors.black.withOpacity(0.5))),
                )
              ],
            ),
            const SizedBox(height: 2,),
            Row(
              children: [
                Text("Status : ", style: CustomFonts.aloevera10W700(color: Colors.black)),
                Expanded(
                  child: Text("Gorem ipsum dolor sit amet, consectetur adipiscing elit.", overflow: TextOverflow.ellipsis, style: CustomFonts.aloevera10W500(color: Colors.black.withOpacity(0.5))),
                )
              ],
            ),
            const SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/alert.png', width: 13, height: 13,),
                    const SizedBox(width: 6,),
                    Text("Gorem ipsum dolor sit amet.", style: CustomFonts.aloevera8W600(color: Colors.black)),
                  ],
                ),
                Row(
                  children: [
                    Text("Charge : ", style: CustomFonts.aloevera10W600(color: Colors.black.withOpacity(0.5))),
                    Text("Rs.50000", style: CustomFonts.aloevera10W600(color: const Color(0xFF3376F3))),
                  ],
                )
              ],
            )

          ],
        ))
      ],
    );
  }
}