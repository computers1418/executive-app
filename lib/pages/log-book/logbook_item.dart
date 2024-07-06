import 'package:executive_app/modals/report_data.dart';
import 'package:executive_app/pages/log-book/active_container.dart';
import 'package:executive_app/pages/log-book/item_header.dart';
import 'package:executive_app/pages/log-book/log_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogBookItem extends StatelessWidget {
  final bool active;
  final ReportData data;
  const LogBookItem({super.key, this.active = false, required this.data});

  @override
  Widget build(BuildContext context) {

    ValueNotifier<String> active = ValueNotifier('');

    return ValueListenableBuilder(
      valueListenable: active,
      builder: (_, val, __) {

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Column(
            children: [
              ItemHeader(
                activeItem: val, 
                data: data,
                onClick: (v){
                  if(active.value == v){
                    active.value = '';
                  }else{
                    active.value = v;
                  }
                },  
              ),
              if(val!='')
              ActiveContainer(
                image: 'assets/images/${val=='sms'? 'phone_avatar': val=='email' ? 'mail_circle': 'mic_circle'}.png',
                show: val=='voice',
                data: data,
              )
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
    );
  }
}