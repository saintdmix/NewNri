// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class PrivacyPolicyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Privacy Policy'),
//         backgroundColor: Colors.orange,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () => context.go('/'),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                 'Privacy Policy for Nri',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[800],
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Center(
//               child: Text(
//                 'Last updated: ${DateTime.now().toString().split(' ')[0]}',
//                 style: TextStyle(color: Colors.grey[600]),
//               ),
//             ),
//             SizedBox(height: 30),

//             _buildSection(
//               'Introduction',
//               'Nri ("we," "our," or "us") operates the Nri mobile application and website (the "Service"). This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.',
//             ),

//             _buildSection(
//               'Information We Collect',
//               'We collect several types of information for various purposes to provide and improve our Service to you:\n\n'
//                   '• Personal Data: While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). This may include your email address, first and last name, phone number, address, and delivery information.\n\n'
//                   '• Usage Data: We may also collect information on how the Service is accessed and used ("Usage Data"). This Usage Data may include information such as your device\'s Internet Protocol address, browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other diagnostic data.\n\n'
//                   '• Location Data: We may use and store information about your location if you give us permission to do so ("Location Data"). We use this data to provide features of our Service, to improve and customize our Service.',
//             ),

//             _buildSection(
//               'How We Use Your Information',
//               'Nri uses the collected data for various purposes:\n\n'
//                   '• To provide and maintain our Service\n'
//                   '• To notify you about changes to our Service\n'
//                   '• To allow you to participate in interactive features of our Service when you choose to do so\n'
//                   '• To provide customer support\n'
//                   '• To gather analysis or valuable information so that we can improve our Service\n'
//                   '• To monitor the usage of our Service\n'
//                   '• To detect, prevent and address technical issues\n'
//                   '• To process payments and deliver food orders\n'
//                   '• To provide you with news, special offers and general information about other goods, services and events',
//             ),

//             _buildSection(
//               'Data Sharing and Disclosure',
//               'We may disclose your Personal Data in the good faith belief that such action is necessary to:\n\n'
//                   '• To comply with a legal obligation\n'
//                   '• To protect and defend the rights or property of Nri\n'
//                   '• To prevent or investigate possible wrongdoing in connection with the Service\n'
//                   '• To protect the personal safety of users of the Service or the public\n'
//                   '• To protect against legal liability\n\n'
//                   'We may share your information with restaurant partners to fulfill your orders and with delivery partners to complete deliveries.',
//             ),

//             _buildSection(
//               'Data Security',
//               'The security of your data is important to us but remember that no method of transmission over the Internet or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.',
//             ),

//             _buildSection(
//               'Your Data Protection Rights',
//               'You have the following data protection rights:\n\n'
//                   '• The right to access, update or delete the information we have on you\n'
//                   '• The right of rectification\n'
//                   '• The right to object\n'
//                   '• The right of restriction\n'
//                   '• The right to data portability\n'
//                   '• The right to withdraw consent\n\n'
//                   'If you wish to exercise any of these rights, please contact us at the contact information provided below.',
//             ),

//             _buildSection(
//               'Account Deletion',
//               'You have the right to delete your account and all associated data at any time. You can request account deletion by:\n\n'
//                   '• Using our account deletion form available at /accountdeletion\n'
//                   '• Contacting us directly via email\n\n'
//                   'Upon account deletion, we will permanently remove all your personal data from our systems within 30 days, except where we are required to retain certain information for legal compliance.',
//             ),

//             _buildSection(
//               'Children\'s Privacy',
//               'Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If you are a parent or guardian and you are aware that your child has provided us with Personal Data, please contact us.',
//             ),

//             _buildSection(
//               'Third-Party Services',
//               'Our Service may contain links to other sites that are not operated by us. If you click on a third-party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit. We have no control over and assume no responsibility for the content, privacy policies or practices of any third-party sites or services.',
//             ),

//             _buildSection(
//               'Google Play Store Compliance',
//               'This app complies with Google Play Store policies regarding user data collection and privacy. We are committed to:\n\n'
//                   '• Transparent data collection and usage practices\n'
//                   '• Obtaining appropriate consent for data collection\n'
//                   '• Providing users with control over their data\n'
//                   '• Securing user data with industry-standard practices\n'
//                   '• Allowing users to request data deletion\n'
//                   '• Complying with applicable privacy laws and regulations',
//             ),

//             _buildSection(
//               'Changes to This Privacy Policy',
//               'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Last updated" date at the top of this Privacy Policy. You are advised to review this Privacy Policy periodically for any changes.',
//             ),

//             _buildSection(
//               'Contact Us',
//               'If you have any questions about this Privacy Policy, please contact us:\n\n'
//                   '• By email: privacy@nri.com\n'
//                   '• Through our mobile application support section\n'
//                   '• By visiting our website contact page',
//             ),

//             SizedBox(height: 30),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () => context.go('/'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                 ),
//                 child: Text('Back to Home'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSection(String title, String content) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.grey[800],
//           ),
//         ),
//         SizedBox(height: 10),
//         Text(
//           content,
//           style: TextStyle(fontSize: 16, height: 1.6, color: Colors.grey[700]),
//         ),
//         SizedBox(height: 25),
//       ],
//     );
//   }
// }
