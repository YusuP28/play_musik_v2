import 'package:flutter/material.dart';

class LuneSettingsScreen extends StatelessWidget {
  const LuneSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Settings', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildSettingsGroup('General', [
            _buildSettingsTile(Icons.palette_outlined, 'Appearance', 'Dark theme, accent color'),
            _buildSettingsTile(Icons.audiotrack_outlined, 'Audio', 'Equalizer, playback settings'),
          ]),
          const SizedBox(height: 20),
          _buildSettingsGroup('Backup & Storage', [
            _buildSettingsTile(Icons.backup_outlined, 'Backup Data', 'Save playlists and history'),
            _buildSettingsTile(Icons.folder_outlined, 'Library Folders', 'Manage music directories'),
          ]),
          const SizedBox(height: 20),
          _buildSettingsGroup('Security & About', [
            _buildSettingsTile(Icons.security_outlined, 'Security', 'App lock and privacy'),
            _buildSettingsTile(Icons.info_outline_rounded, 'About Lune', 'Version 2.0.0'),
          ]),
        ],
      ),
    );
  }

  Widget _buildSettingsGroup(String title, List<Widget> tiles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Color(0xFF8CA0B3), fontSize: 13, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF171C24),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFF222936)),
          ),
          child: Column(children: tiles),
        ),
      ],
    );
  }

  Widget _buildSettingsTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF8CA0B3)),
      title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
      subtitle: Text(subtitle, style: const TextStyle(color: Color(0xFF8CA0B3), fontSize: 12)),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF8CA0B3), size: 14),
      onTap: () {},
    );
  }
}
