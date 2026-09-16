import 'package:flutter/material.dart';
import 'now_playing_screen.dart';
import 'settings_screen.dart';

class LuneHomeScreen extends StatefulWidget {
  const LuneHomeScreen({super.key});

  @override
  State<LuneHomeScreen> createState() => _LuneHomeScreenState();
}

class _LuneHomeScreenState extends State<LuneHomeScreen> {
  final List<String> _sections = ['Resume', 'All', 'Playlists', 'Albums', 'Artists', 'Genres', 'Folders'];
  String _selectedSection = 'Resume';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E232D),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.music_note, color: Color(0xFF8CA0B3), size: 22),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Lune',
                            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFFE2E8F0)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.nights_stay_outlined, color: Color(0xFF8CA0B3)),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.settings_outlined, color: Color(0xFF8CA0B3)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LuneSettingsScreen()),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF171C24),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFF222936), width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Night',
                                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'of music',
                                  style: TextStyle(fontSize: 14, color: Color(0xFF8CA0B3)),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFF232D3F),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Icon(Icons.bedtime_rounded, color: Color(0xFF93C5FD), size: 28),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatBadge(Icons.access_time_rounded, '1h'),
                            _buildStatBadge(Icons.library_music_rounded, '192'),
                            _buildStatBadge(Icons.favorite_border_rounded, '0'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF171C24),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.playlist_play_rounded, color: Color(0xFF8CA0B3), size: 20),
                        SizedBox(width: 10),
                        Text('Playing from: All', style: TextStyle(color: Color(0xFF8CA0B3), fontSize: 13)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LuneNowPlayingScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF171C24),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 55,
                              height: 55,
                              color: Colors.purple.shade900,
                              child: const Icon(Icons.album, color: Colors.white70),
                            ),
                          ),
                          const SizedBox(width: 14),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hamari Adhuri Kahani',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Jeet Gannguli, Arijit Singh',
                                  style: TextStyle(fontSize: 12, color: Color(0xFF8CA0B3)),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF2A3445),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.play_arrow_rounded, color: Colors.white),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const LuneNowPlayingScreen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Recommendations',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _sections.length,
                      itemBuilder: (context, index) {
                        final section = _sections[index];
                        final isSelected = _selectedSection == section;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ChoiceChip(
                            label: Text(section),
                            selected: isSelected,
                            selectedColor: const Color(0xFF233245),
                            backgroundColor: const Color(0xFF171C24),
                            labelStyle: TextStyle(
                              color: isSelected ? Colors.white : const Color(0xFF8CA0B3),
                              fontWeight: FontWeight.w500,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                              side: BorderSide(
                                color: isSelected ? const Color(0xFF38BDF8) : Colors.transparent,
                              ),
                            ),
                            onSelected: (bool selected) {
                              setState(() {
                                _selectedSection = section;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LuneNowPlayingScreen()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF151A21),
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: const Color(0xFF222B38)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 45,
                          height: 45,
                          color: const Color(0xFF2A3445),
                          child: const Icon(Icons.music_note, color: Colors.white70, size: 20),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Hamari Adhuri Kahani',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Jeet Gannguli, Arijit Singh',
                              style: TextStyle(fontSize: 11, color: Color(0xFF8CA0B3)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.skip_previous_rounded, color: Colors.white, size: 22),
                            onPressed: () {},
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF2E3B4E),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 20),
                              onPressed: () {},
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.skip_next_rounded, color: Colors.white, size: 22),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatBadge(IconData icon, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF212833),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: const Color(0xFF8CA0B3)),
          const SizedBox(width: 8),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
