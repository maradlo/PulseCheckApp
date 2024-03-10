import 'package:flutter/material.dart';
import 'package:pulse_check/screens/login_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nastavenia',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.blueGrey.shade600,
        foregroundColor: Colors.white,
        leading: Container(),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Povoliť notifikácie'),
            value: true,
            onChanged: (bool value) {},
          ),
          ListTile(
            title: const Text('Zásady ochrany osobných údajov'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Často kladené otázky'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('O PulseCheck'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Kontaktovať vývojára'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Odhlásiť sa'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Odhlásiť sa'),
                    content: const Text('Naozaj sa chcete odhlásiť?'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Zrušiť'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Odhlásiť'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                                fullscreenDialog: true),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
