import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/catatan': (context) => const CatatanPage(),
        '/jadwal_pelajaran': (context) => const JadwalPelajaranPage(),
        '/tugas_sekolah': (context) => const TugasSekolahPage(),
      },
    );
  }
}

// ------------------- HOMEPAGE -------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Homepage",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: SingleChildScrollView( // <-- bikin bisa scroll
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Assalamualaikum username,",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Semoga harimu menyenangkan",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 30),
            _buildNavigableSection(
              context,
              title: "3 catatan terakhir",
              color: Colors.blue[500],
              height: 120,
              routeName: '/catatan',
              content: const Center(
                child: Text(
                  "Isi catatan di sini",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            _buildNavigableSection(
              context,
              title: "Jadwal pelajaran hari ini",
              color: Colors.green[500],
              height: 150,
              routeName: '/jadwal_pelajaran',
              content: const Center(
                child: Text(
                  "Isi jadwal di sini",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            _buildNavigableSection(
              context,
              title: "Tugas hari ini",
              color: Colors.orange[500],
              height: 150,
              routeName: '/tugas_sekolah',
              content: const Center(
                child: Text(
                  "Isi tugas di sini",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                "Aplikasi ini dibuat untuk memenuhi tugas mata kuliah Mobile Programming",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigableSection(
    BuildContext context, {
    required String title,
    required Color? color,
    required double height,
    required String routeName,
    required Widget content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          child: Card(
            color: color,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: height,
              width: double.infinity,
              child: content,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

// ------------------- CATATAN -------------------
class CatatanPage extends StatelessWidget {
  const CatatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catatan", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          _buildCard("Catatan 1", Colors.blue[600]!),
          _buildCard("Catatan 2", Colors.blue[600]!),
          _buildCard("Catatan 3", Colors.blue[600]!),
          _buildCard("Catatan 4", Colors.blue[600]!),
          _buildCard("Catatan 5", Colors.blue[600]!),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[800],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildCard(String text, Color color) {
    return Card(
      color: color,
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        height: 100,
        width: 300,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

// ------------------- JADWAL -------------------
class JadwalPelajaranPage extends StatelessWidget {
  const JadwalPelajaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    final days = ["Senin", "Selasa", "Rabu", "Kamis", "Jum'at"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Pelajaran", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: days.length,
        itemBuilder: (context, index) => _buildDayCard(days[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[800],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildDayCard(String day) {
    return Card(
      color: Colors.blue[600],
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        height: 60,
        width: 300,
        child: Center(
          child: Text(
            day,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

// ------------------- TUGAS -------------------
class TugasSekolahPage extends StatelessWidget {
  const TugasSekolahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = ["Tugas Sekolah 1", "Tugas Sekolah 2", "Tugas Sekolah 3"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Sekolah", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: tasks.length,
        itemBuilder: (context, index) => _buildTaskCard(tasks[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[800],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildTaskCard(String task) {
    return Card(
      color: Colors.blue[600],
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SizedBox(
        height: 150,
        width: 300,
        child: Center(
          child: Text(
            task,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
