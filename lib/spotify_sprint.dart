import 'package:flutter/material.dart';

class SpotifySprint extends StatefulWidget {
  const SpotifySprint({super.key});

  @override
  State<SpotifySprint> createState() => _SpotifySprintState();
}

class _SpotifySprintState extends State<SpotifySprint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        titleSpacing: 16,
        title: const Text(
          "Recently played",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.notifications_none, color: Colors.white),
          SizedBox(width: 18),
          Icon(Icons.history, color: Colors.white),
          SizedBox(width: 18),
          Icon(Icons.settings_outlined, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),

            // ---------- Recently played (artists) ----------
            Row(
              children: [
                artist("assets/images/img_1.png", "Lana Del Rey"),
                const SizedBox(width: 20),
                artist("assets/images/img_2.png", "Marvin Gaye"),
              ],
            ),

            const SizedBox(height: 24),

            // ---------- Spotify Wrapped ----------
            Row(
              children: [
                Image.asset(
                  "assets/images/img_3.png",
                  height: 55,
                  width: 55,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "#SPOTIFYWRAPPED",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    Text(
                      "Your 2021 in review",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 14),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                squareCard(
                  "assets/images/img_4.png",
                  "Your Top Songs 2021",
                ),
                const SizedBox(width: 14),
                squareCard(
                  "assets/images/img_5.png",
                  "Your Artists Revealed",
                ),
              ],
            ),

            const SizedBox(height: 26),

            // ---------- Editor's picks ----------
            const Text(
              "Editor's picks",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                squareCard(
                  "assets/images/img_6.png",
                  "Ed Sheeran, Big Sean, Juice WRLD, Post Malone",
                ),
                const SizedBox(width: 14),
                squareCard(
                  "assets/images/img_7.png",
                  "Mitski, Tame Impala, Glass Animals, Charli XCX",
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Circular artist avatar + name
  Widget artist(String image, String name) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            image,
            height: 130,
            width: 130,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  // Square image + text below it
  Widget squareCard(String image, String text) {
    return SizedBox(
      width: 175,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 175,
            width: 175,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ],
      ),
    );
  }
}