import 'package:flutter/material.dart';
import '../widget/dashboard_card.dart';
import '../widget/notification_card.dart';
import '../widget/student_counter.dart';
import '../widget/profile_picture_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Student info — declared inside build
    final String studentName = 'Owusu Emmanuel';
    final String studentID = 'UEB3215222';
    final String course = 'BSc. Information Technology & Decision Science';
    final String university = 'University of Energy and Natural Resources';
    final String imageUrl ='https://images.unsplash.com/photo-1556157382-97eda2d62296?q=80&w=1600&auto=format&fit=crop';


    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Information Manager"),
        centerTitle: true, // 👈 this line centers it
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
          DashboardCard(
          name: studentName,
          course: course,
          university: university,
          imageUrl: imageUrl,
        ),

            const SizedBox(height: 16),
            NotificationCard(name: studentName),
            const SizedBox(height: 16),
            const StudentCounter(),
            const SizedBox(height: 16),
            ProfilePictureCard(imageUrl: imageUrl),
            const SizedBox(height: 28),
            Text('Student ID: $studentID',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
