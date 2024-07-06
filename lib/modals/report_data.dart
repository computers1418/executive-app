// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReportData {
  final String identifier;
  final String amount;
  final int deliveryTime;
  final int answeredDuration;
  final String audioType;
  final String channel;
  final int msgId;
  final String cause;
  final int pickUp;
  final int audioLength;
  final String mobileNo;
  final String uuId;
  final int globalErrorCode;
  final int cursorId;
  final int hangUp;
  final int submitTime;
  final int pulse;
  final String status;
  ReportData({
    required this.identifier,
    required this.amount,
    required this.deliveryTime,
    required this.answeredDuration,
    required this.audioType,
    required this.channel,
    required this.msgId,
    required this.cause,
    required this.pickUp,
    required this.audioLength,
    required this.mobileNo,
    required this.uuId,
    required this.globalErrorCode,
    required this.cursorId,
    required this.hangUp,
    required this.submitTime,
    required this.pulse,
    required this.status,
  });

  ReportData copyWith({
    String? identifier,
    String? amount,
    int? deliveryTime,
    int? answeredDuration,
    String? audioType,
    String? channel,
    int? msgId,
    String? cause,
    int? pickUp,
    int? audioLength,
    String? mobileNo,
    String? uuId,
    int? globalErrorCode,
    int? cursorId,
    int? hangUp,
    int? submitTime,
    int? pulse,
    String? status,
  }) {
    return ReportData(
      identifier: identifier ?? this.identifier,
      amount: amount ?? this.amount,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      answeredDuration: answeredDuration ?? this.answeredDuration,
      audioType: audioType ?? this.audioType,
      channel: channel ?? this.channel,
      msgId: msgId ?? this.msgId,
      cause: cause ?? this.cause,
      pickUp: pickUp ?? this.pickUp,
      audioLength: audioLength ?? this.audioLength,
      mobileNo: mobileNo ?? this.mobileNo,
      uuId: uuId ?? this.uuId,
      globalErrorCode: globalErrorCode ?? this.globalErrorCode,
      cursorId: cursorId ?? this.cursorId,
      hangUp: hangUp ?? this.hangUp,
      submitTime: submitTime ?? this.submitTime,
      pulse: pulse ?? this.pulse,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'amount': amount,
      'deliveryTime': deliveryTime,
      'answeredDuration': answeredDuration,
      'audioType': audioType,
      'channel': channel,
      'msgId': msgId,
      'cause': cause,
      'pickUp': pickUp,
      'audioLength': audioLength,
      'mobileNo': mobileNo,
      'uuId': uuId,
      'globalErrorCode': globalErrorCode,
      'cursorId': cursorId,
      'hangUp': hangUp,
      'submitTime': submitTime,
      'pulse': pulse,
      'status': status,
    };
  }

  factory ReportData.fromMap(map) {
    return ReportData(
      identifier: map['identifier'] as String,
      amount: '${map['amount']}',
      deliveryTime: map['deliveryTime'] as int,
      answeredDuration: map['answeredDuration'] as int,
      audioType: map['audioType'] as String,
      channel: map['channel'] as String,
      msgId: map['msgId'] as int,
      cause: map['cause'] as String,
      pickUp: map['pickUp'] as int,
      audioLength: map['audioLength'] as int,
      mobileNo: '${map['mobileNo']}',
      uuId: map['uuId'] as String,
      globalErrorCode: map['globalErrorCode'] as int,
      cursorId: map['cursorId'] as int,
      hangUp: map['hangUp'] as int,
      submitTime: map['submitTime'] as int,
      pulse: map['pulse'] as int,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ReportData(identifier: $identifier, amount: $amount, deliveryTime: $deliveryTime, answeredDuration: $answeredDuration, audioType: $audioType, channel: $channel, msgId: $msgId, cause: $cause, pickUp: $pickUp, audioLength: $audioLength, mobileNo: $mobileNo, uuId: $uuId, globalErrorCode: $globalErrorCode, cursorId: $cursorId, hangUp: $hangUp, submitTime: $submitTime, pulse: $pulse, status: $status)';
  }

  @override
  bool operator ==(covariant ReportData other) {
    if (identical(this, other)) return true;
  
    return 
      other.identifier == identifier &&
      other.amount == amount &&
      other.deliveryTime == deliveryTime &&
      other.answeredDuration == answeredDuration &&
      other.audioType == audioType &&
      other.channel == channel &&
      other.msgId == msgId &&
      other.cause == cause &&
      other.pickUp == pickUp &&
      other.audioLength == audioLength &&
      other.mobileNo == mobileNo &&
      other.uuId == uuId &&
      other.globalErrorCode == globalErrorCode &&
      other.cursorId == cursorId &&
      other.hangUp == hangUp &&
      other.submitTime == submitTime &&
      other.pulse == pulse &&
      other.status == status;
  }

  @override
  int get hashCode {
    return identifier.hashCode ^
      amount.hashCode ^
      deliveryTime.hashCode ^
      answeredDuration.hashCode ^
      audioType.hashCode ^
      channel.hashCode ^
      msgId.hashCode ^
      cause.hashCode ^
      pickUp.hashCode ^
      audioLength.hashCode ^
      mobileNo.hashCode ^
      uuId.hashCode ^
      globalErrorCode.hashCode ^
      cursorId.hashCode ^
      hangUp.hashCode ^
      submitTime.hashCode ^
      pulse.hashCode ^
      status.hashCode;
  }
}
