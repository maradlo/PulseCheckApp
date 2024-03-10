import 'package:flutter/material.dart';

class MyOverviewScreen extends StatefulWidget {
  const MyOverviewScreen({super.key});

  @override
  State<MyOverviewScreen> createState() => _MyOverviewScreenState();
}

class _MyOverviewScreenState extends State<MyOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Môj prehľad',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.blueGrey.shade600,
        foregroundColor: Colors.white,
        leading: Container(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Moje zmeny',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text('Ďaľšia zmena'),
                subtitle: Text('Marec 18, 2024, 9:00 - 17:00'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Moja práceneschopnosť',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Nedchádzajúca návšteva lekára'),
                subtitle: Text('22 Marec, 2024 - 24 Marec, 2024'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
