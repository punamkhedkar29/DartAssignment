import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final String teamName;
  final List players;

  const PlayerList({
    super.key,
    required this.teamName,
    required this.players,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Team: $teamName"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.transparent,
                                  Colors.blue.withOpacity(0.8),
                                ],
                              ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Player Name: ${players[index]["name"]}"),
                        const SizedBox(height: 10),
                        Text("Player Jersey No.: ${players[index]["jerNo"]}"),
                        const SizedBox(height: 10),
                        Text("Player Team: ${players[index]["team"]}"),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
