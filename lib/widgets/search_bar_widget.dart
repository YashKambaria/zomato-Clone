import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Color.fromARGB(255,42,41,46),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 32, 33, 38),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            SizedBox(width: 8),
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "Restaurant name or a dish...",
                style: TextStyle(color: Color.fromARGB(255,218,219,224)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(width: 1, color: Color.fromARGB(255,44,45,50,), height: 20),
            SizedBox(width: 8),
            Icon(Icons.mic_none_rounded, color: Colors.white),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
