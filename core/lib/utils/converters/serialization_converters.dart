import 'package:cloud_firestore/cloud_firestore.dart';

DateTime? timestampToDateTime(Timestamp? timestamp) => timestamp?.toDate();

Timestamp? dateTimeToTimestamp(DateTime? dateTime) =>
    dateTime == null ? null : Timestamp.fromDate(dateTime);
