import 'package:executive_app/pages/log-book/active_container.dart';
import 'package:executive_app/pages/log-book/item_header.dart';
import 'package:executive_app/pages/log-book/log_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogBookItem extends StatelessWidget {
  final bool active;
  final String activeItem;
  const LogBookItem({super.key, this.active = false, this.activeItem = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          ItemHeader(activeItem: activeItem),
          if(active)
          const ActiveContainer(image: 'assets/images/phone_avatar.png')
          else
          Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              children: [
                LogListItem(image: 'assets/images/phone_avatar.png'),
                SizedBox(height: 16,),
                LogListItem(image: 'assets/images/mail_circle.png'),
                SizedBox(height: 16,),
                LogListItem(image: 'assets/images/mic_circle.png')
              ],
            ),
          )
        ],
      ),
    );
  }
}