import 'package:get/get.dart';

class AnnouncementController extends GetxController {
  final List<String> announcements = [
    /// 1. TechFest Announcement
    """
  <p><strong>🎉 TechFest 2025 is here!</strong></p>
  <p>Join us for <em>3 days of innovation, networking, and fun</em> at the main auditorium.</p>
  <p><a href="https://techfest.com/register">Click here to register</a></p>
  <p style="color:green;"><strong>Date:</strong> 18-20 July, 2025</p>
  """,

    /// 2. Assignment Deadline
    """
  <p><strong>📌 Assignment Deadline Reminder</strong></p>
  <p>The <em>AI/ML Assignment 2</em> is due by <span style="color:red;">May 20, 2025</span>.</p>
  <ul>
    <li>Submit via LMS portal</li>
    <li>Plagiarism above 10% will be penalized</li>
  </ul>
  """,

    /// 3. Maintenance Alert
    """
  <p><strong>🚧 LMS Maintenance Notice</strong></p>
  <p>The platform will be <em>unavailable</em> on <strong>May 15th from 1 AM to 4 AM</strong> for scheduled maintenance.</p>
  <p style="color:#ff5722;">Please save your work in advance.</p>
  """,

    /// 4. Internship Opportunity
    """
  <p><strong>💼 Internship Alert: Google Summer Internship 2025</strong></p>
  <p>Applications are now open! <a href="https://interns.google.com">Apply Now</a>.</p>
  <p><em>Eligibility:</em> Final year students from CS/IT branches.</p>
  """,

    /// 5. Webinar Invitation
    """
  <p><strong>🎓 Join Our Webinar: "Future of AI"</strong></p>
  <p>Speaker: <em>Dr. Neha Ahuja, MIT</em></p>
  <p><a href="https://webinarlink.com">Reserve your seat</a></p>
  """,

    /// 6. Scholarship Info
    """
  <p><strong>📢 Merit-based Scholarships Available</strong></p>
  <ul>
    <li>90%+ in 12th grade – 100% tuition waiver</li>
    <li>80-89% – 50% waiver</li>
  </ul>
  <p>Apply by <span style="color:red;">June 30, 2025</span></p>
  """,

    /// 7. Job Drive
    """
  <p><strong>🚀 Campus Recruitment Drive by Infosys</strong></p>
  <p><em>Eligible Programs:</em> MCA, B.Tech (CS/IT)</p>
  <p>Register here: <a href="https://tinyurl.com/infosys2025">Infosys Registration Form</a></p>
  """,

    /// 8. Holiday Announcement
    """
  <p><strong>📅 Holiday Notice</strong></p>
  <p>The university will remain closed on <strong>June 17th, 2025</strong> on account of <em>Bakrid</em>.</p>
  """,

    /// 9. Course Enrollment
    """
  <p><strong>📘 Enroll Now: Flutter Development Bootcamp</strong></p>
  <p>Start date: <span style="color:green;">June 10, 2025</span></p>
  <p><a href="https://lms.example.com/flutter-course">Click here to enroll</a></p>
  """,

    /// 10. Feedback Request
    """
  <p><strong>🗣️ Help Us Improve!</strong></p>
  <p>We'd love your feedback on the recent semester. <a href="https://feedbackform.com">Fill out this form</a>.</p>
  <p><em>Responses are anonymous and appreciated.</em></p>
  """
  ];
}
