import 'package:flutter/material.dart';

void main() {
  runApp(const LearnHubApp());
}

class LearnHubApp extends StatelessWidget {
  const LearnHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LearnHub',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

// LOGIN SCREEN
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearnHub'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Welcome to LearnHub',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Learn. Grow. Succeed.'),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

// HOME SCREEN
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = const [
    HomeTab(),
    ProgramsScreen(),
    ProgressScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Programs',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined),
            selectedIcon: Icon(Icons.bar_chart),
            label: 'Progress',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// HOME TAB
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Hello, Learner!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text('Continue your learning journey.'),
          const SizedBox(height: 24),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Progress',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const LinearProgressIndicator(value: 0.45),
                  const SizedBox(height: 10),
                  const Text('45% completed'),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Recommended Programs',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          ProgramCard(
            title: 'Digital Skills',
            description: 'Build essential digital skills.',
          ),

          ProgramCard(
            title: 'Leadership Basics',
            description: 'Develop your leadership abilities.',
          ),

          ProgramCard(
            title: 'Communication Skills',
            description: 'Improve workplace communication.',
          ),
        ],
      ),
    );
  }
}

// PROGRAM LISTING
class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Browse Programs',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          const TextField(
            decoration: InputDecoration(
              hintText: 'Search programs',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          ProgramCard(
            title: 'Digital Skills',
            description: 'Learn essential digital skills.',
          ),

          ProgramCard(
            title: 'Leadership Basics',
            description: 'Learn leadership fundamentals.',
          ),

          ProgramCard(
            title: 'Communication Skills',
            description: 'Improve your communication skills.',
          ),
        ],
      ),
    );
  }
}

// PROGRAM CARD
class ProgramCard extends StatelessWidget {
  final String title;
  final String description;

  const ProgramCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.school),
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProgramDetailScreen(title: title),
            ),
          );
        },
      ),
    );
  }
}

// PROGRAM DETAILS
class ProgramDetailScreen extends StatelessWidget {
  final String title;

  const ProgramDetailScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Icon(
              Icons.school,
              size: 80,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'This training program contains structured learning modules designed to help learners develop useful skills.',
            ),
            const SizedBox(height: 20),
            const Text(
              'Modules',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text('Module 1'),
            ),
            const ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text('Module 2'),
            ),
            const ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text('Module 3'),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Enrollment successful!'),
                  ),
                );
              },
              child: const Text('Enroll Now'),
            ),
          ],
        ),
      ),
    );
  }
}

// PROGRESS
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'My Progress',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: ListTile(
              title: const Text('Digital Skills'),
              subtitle: const Text('45% completed'),
              trailing: SizedBox(
                width: 60,
                child: LinearProgressIndicator(value: 0.45),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Leadership Basics'),
              subtitle: const Text('20% completed'),
              trailing: SizedBox(
                width: 60,
                child: LinearProgressIndicator(value: 0.20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// PROFILE
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(
            Icons.account_circle,
            size: 100,
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Learner Profile',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Name'),
            subtitle: Text('Learner'),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('learner@example.com'),
          ),
          const ListTile(
            leading: Icon(Icons.workspace_premium),
            title: Text('Certificates'),
            subtitle: Text('No certificates yet'),
          ),
        ],
      ),
    );
  }
}
