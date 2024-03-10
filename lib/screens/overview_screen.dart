import 'package:flutter/material.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Prehľad',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600)),
          backgroundColor: Colors.blueGrey.shade600,
          foregroundColor: Colors.white,
          leading: Container(),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 17,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text('Item $index'),
                  onTap: () {
                    // Handle the tap event here, for example:
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Tap on Item $index'),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ));
  }
}
