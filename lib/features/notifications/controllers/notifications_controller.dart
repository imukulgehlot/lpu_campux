import 'package:get/get.dart';

import '../../../core/model/ui_model/notification_ui_model.dart';

class NotificationController extends GetxController {
  late final notifications = <NotificationUIModel>[
    NotificationUIModel(
      title: 'New Event Alert',
      description: 'A new event has been created in your area.',
      createdAt: DateTime.now().subtract(const Duration(minutes: 12)),
    ),
    NotificationUIModel(
      title: 'Class Rescheduled',
      description: 'Your DBMS lecture has been moved to 3:00 PM in Block 34-402.',
      createdAt: DateTime.now().subtract(const Duration(hours: 1, minutes: 15)),
    ),
    NotificationUIModel(
      title: 'Placement Drive Update',
      description: 'Infosys will be visiting on 18th May. Register by 16th May EOD.',
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    NotificationUIModel(
      title: 'Sports Meet 2K25',
      description: 'Registrations open for Annual Sports Meet. Join via UMS.',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    NotificationUIModel(
      title: 'Hostel Mess Feedback',
      description: 'Your mess feedback is due for this month. Submit before Friday.',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    NotificationUIModel(
      title: 'Library Reminder',
      description: 'Return "Clean Code" by Robert C. Martin by tomorrow to avoid fine.',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    NotificationUIModel(
      title: 'Cultural Night Auditions',
      description: 'Auditions for LPU Cultural Night are now open. Apply before 20th May.',
      createdAt: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
    ),
    NotificationUIModel(
      title: 'Exam Timetable Released',
      description: 'Mid-term schedule is now live on UMS. Check your portal.',
      createdAt: DateTime.now().subtract(const Duration(days: 1, hours: 4)),
    ),
    NotificationUIModel(
      title: 'Wi-Fi Maintenance',
      description: 'Campus Wi-Fi will be down for maintenance on 15th May from 1–4 AM.',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    NotificationUIModel(
      title: 'Blood Donation Camp',
      description: 'Join the Red Cross blood donation drive this Thursday in Block 13.',
      createdAt: DateTime.now().subtract(const Duration(days: 2, hours: 6)),
    ),
    NotificationUIModel(
      title: 'Campus Movie Night 🎬',
      description: 'Catch "Interstellar" on the big screen in Open Theatre at 8:00 PM.',
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
    NotificationUIModel(
      title: 'Quiz Competition Results',
      description: 'Your team ranked 2nd in the Science Fest Quiz. Congrats!',
      createdAt: DateTime.now().subtract(const Duration(days: 3, hours: 4)),
    ),
    NotificationUIModel(
      title: 'Laundry Room Notice',
      description: 'Machine 3 in Hostel 7 is under repair. Use alternatives till 17th May.',
      createdAt: DateTime.now().subtract(const Duration(days: 4)),
    ),
    NotificationUIModel(
      title: 'Counseling Session Slot',
      description: 'Your mentorship slot with Dr. Kapoor is confirmed for 16th May, 11 AM.',
      createdAt: DateTime.now().subtract(const Duration(days: 4, hours: 5)),
    ),
    NotificationUIModel(
      title: 'Dance Club Practice',
      description: 'Weekly practice shifted to Block 24 dance room this Sunday.',
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    NotificationUIModel(
      title: 'AI Workshop Registration',
      description: 'Last date to register for the AI/ML Workshop is 18th May.',
      createdAt: DateTime.now().subtract(const Duration(days: 5, hours: 3)),
    ),
    NotificationUIModel(
      title: 'LPU GoKart Championship 🏎️',
      description: 'Calling all racers! Register your team for the GoKart challenge.',
      createdAt: DateTime.now().subtract(const Duration(days: 6)),
    ),
    NotificationUIModel(
      title: 'Hostel Room Inspection',
      description: 'Routine inspection scheduled for Block 10 tomorrow at 9 AM.',
      createdAt: DateTime.now().subtract(const Duration(days: 6, hours: 5)),
    ),
    NotificationUIModel(
      title: 'LPU Radio 📻',
      description: 'Tune in to LPU Radio today at 5 PM for a Bollywood Retro Show!',
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
    ),
    NotificationUIModel(
      title: 'New Food Truck 🍔',
      description: 'Try out "Rolling Buns" near UniMall – student discounts active!',
      createdAt: DateTime.now().subtract(const Duration(days: 7, hours: 6)),
    ),
  ].obs;

}
