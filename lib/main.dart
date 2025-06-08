import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  // Remove the # from URLs
  usePathUrlStrategy();
  runApp(MyApp());
}

// Configure the router
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: '/privacypolicy',
      builder: (BuildContext context, GoRouterState state) {
        return PrivacyPolicyPage();
      },
    ),
    GoRoute(
      path: '/accountdeletion',
      builder: (BuildContext context, GoRouterState state) {
        return AccountDeletionPage();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      debugShowCheckedModeBanner: false,
      title: 'Nri - Food Ordering',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: _router,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nri'),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange, Colors.deepOrange],
                ),
              ),
              child: Column(
                children: [
                  Icon(Icons.restaurant_menu, size: 80, color: Colors.white),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to Nri',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Order delicious food from your local restaurants',
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('Order Now'),
                  ),
                ],
              ),
            ),

            // Features Section
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    'Why Choose Nri?',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 40),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildFeatureCard(
                        icon: Icons.local_restaurant,
                        title: 'Local Restaurants',
                        description: 'Support your local businesses',
                      ),
                      _buildFeatureCard(
                        icon: Icons.delivery_dining,
                        title: 'Fast Delivery',
                        description: 'Quick and reliable delivery',
                      ),
                      _buildFeatureCard(
                        icon: Icons.star,
                        title: 'Quality Food',
                        description: 'Fresh and delicious meals',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.go('/privacypolicy');
                        },
                        child: Text('Privacy Policy'),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          context.go('/accountdeletion');
                        },
                        child: Text('Delete Account'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '© 2024 Nri. All rights reserved.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: Colors.orange),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy for Nri',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Last updated: ${DateTime.now().year}',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 30),

            _buildSection(
              'Information We Collect',
              'We collect information you provide directly to us, such as when you create an account, place an order, or contact us. This may include your name, email address, phone number, delivery address, and payment information.',
            ),

            _buildSection(
              'How We Use Your Information',
              'We use the information we collect to:\n• Process and fulfill your food orders\n• Communicate with you about your orders\n• Provide customer support\n• Improve our services\n• Send you promotional communications (with your consent)\n• Comply with legal obligations',
            ),

            _buildSection(
              'Information Sharing',
              'We may share your information with:\n• Restaurant partners to fulfill your orders\n• Delivery partners to complete deliveries\n• Payment processors to handle transactions\n• Service providers who assist our operations\n• Legal authorities when required by law',
            ),

            _buildSection(
              'Data Security',
              'We implement appropriate technical and organizational measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.',
            ),

            _buildSection(
              'Your Rights',
              'You have the right to:\n• Access your personal information\n• Correct inaccurate information\n• Delete your account and personal data\n• Opt-out of marketing communications\n• Request data portability',
            ),

            _buildSection(
              'Data Retention',
              'We retain your personal information for as long as necessary to provide our services, comply with legal obligations, resolve disputes, and enforce our agreements.',
            ),

            _buildSection(
              'Children\'s Privacy',
              'Our service is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13.',
            ),

            _buildSection(
              'International Data Transfers',
              'Your information may be transferred to and processed in countries other than your own. We ensure appropriate safeguards are in place for such transfers.',
            ),

            _buildSection(
              'Changes to This Policy',
              'We may update this privacy policy from time to time. We will notify you of any material changes by posting the new policy on our app and updating the "last updated" date.',
            ),

            _buildSection(
              'Contact Us',
              'If you have any questions about this Privacy Policy, please contact us through our app or at our support email.',
            ),

            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class AccountDeletionPage extends StatefulWidget {
  @override
  _AccountDeletionPageState createState() => _AccountDeletionPageState();
}

class _AccountDeletionPageState extends State<AccountDeletionPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submitDeletionRequest() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSubmitting = true;
      });

      // Simulate API call
      await Future.delayed(Duration(seconds: 2));

      setState(() {
        _isSubmitting = false;
      });

      // Show success dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Request Submitted'),
            content: Text(
              'Your account deletion request has been submitted successfully. We will process your request within 30 days and send a confirmation to your email.',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  context.go('/');
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Account'),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Deletion Request',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.red[50],
                border: Border.all(color: Colors.red[200]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Important Notice',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[800],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Deleting your account will permanently remove all your data, including:\n• Order history\n• Saved addresses\n• Payment methods\n• Preferences and settings\n\nThis action cannot be undone.',
                    style: TextStyle(color: Colors.red[700]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Text(
              'To proceed with account deletion, please provide your email address:',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            SizedBox(height: 20),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter your registered email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      }
                      if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isSubmitting ? null : _submitDeletionRequest,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child:
                          _isSubmitting
                              ? CircularProgressIndicator(color: Colors.white)
                              : Text('Submit Deletion Request'),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        context.go('/');
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      child: Text('Cancel'),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(color: Colors.blue[200]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Processing Timeline',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Your request will be processed within 30 days\n• You will receive an email confirmation once completed\n• During this period, your account will be deactivated\n• For questions, contact our support team',
                    style: TextStyle(color: Colors.blue[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
