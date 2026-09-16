import 'package:flutter/material.dart';

class LuneNowPlayingScreen extends StatelessWidget {
  const LuneNowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Playing from: All', style: TextStyle(fontSize: 14, color: Color(0xFF8CA0B3))),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade800, Colors.blue.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.3),
                      blurRadius: 30,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(Icons.music_note_rounded, size: 100, color: Colors.white70),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hamari Adhuri Kahani',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Jeet Gannguli, Arijit Singh',
                        style: TextStyle(fontSize: 14, color: Color(0xFF8CA0B3)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border_rounded, color: Colors.white, size: 28),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: const Color(0xFF222B38),
                    thumbColor: Colors.white,
                  ),
                  child: Slider(
                    value: 1.25,
                    min: 0,
                    max: 5.0,
                    onChanged: (val) {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('01:25', style: TextStyle(color: Color(0xFF8CA0B3), fontSize: 12)),
                      Text('05:10', style: TextStyle(color: Color(0xFF8CA0B3), fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.shuffle_rounded, color: Color(0xFF8CA0B3), size: 24),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.skip_previous_rounded, color: Colors.white, size: 36),
                  onPressed: () {},
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.pause_rounded, color: Color(0xFF0E1116), size: 32),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next_rounded, color: Colors.white, size: 36),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.repeat_rounded, color: Color(0xFF8CA0B3), size: 24),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
