// lib/screen/restaurant_screen.dart
// Minimal Zomato-like menu screen (dark), no external packages.

import 'package:flutter/material.dart';

class MenuItemModel {
  final String title;
  final int priceInr;
  final String description;
  final bool isVeg;
  final bool isSpicy;
  final double reorderScore; // 0..1
  final String imageUrl;

  const MenuItemModel({
    required this.title,
    required this.priceInr,
    required this.description,
    required this.isVeg,
    required this.isSpicy,
    required this.reorderScore,
    required this.imageUrl,
  });
}

class RestaurantMenuScreen extends StatelessWidget {
  const RestaurantMenuScreen({super.key});

  static const _rupee = '\u20B9';

  List<MenuItemModel> _mock() => const [
        MenuItemModel(
          title: 'Gujarati Fixed Thali',
          priceInr: 168,
          description: '1 Veg Sabji+1 Kathol Sabji+5 Roti+1 Papad',
          isVeg: true,
          isSpicy: false,
          reorderScore: .75,
          imageUrl:
              'https://images.unsplash.com/photo-1604908176997-4319c3fae2be?w=800',
        ),
        MenuItemModel(
          title: 'Jalaram Special Parotha Shak Combo',
          priceInr: 154,
          description: '1 Veg Sabji+2 Paratha',
          isVeg: true,
          isSpicy: false,
          reorderScore: .65,
          imageUrl:
              'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=800',
        ),
        MenuItemModel(
          title: 'Aloo Paratha',
          priceInr: 126,
          description:
              'Stuffed whole wheat paratha with spiced mashed potatoes.',
          isVeg: true,
          isSpicy: true,
          reorderScore: .55,
          imageUrl:
              'https://images.unsplash.com/photo-1633945274405-7e4d3c4e2d3c?w=800',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final items = _mock();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
        itemCount: items.length,
        separatorBuilder: (_, __) =>
            const Divider(height: 24, thickness: 0.6, color: Color(0xFF2E2E2E)),
        itemBuilder: (context, i) => _MenuCard(item: items[i]),
      ),
      backgroundColor: const Color(0xFF121212),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final MenuItemModel item;
  const _MenuCard({required this.item});

  Color get _green => const Color(0xFF22C55E);
  Color get _textMuted => const Color(0xFFB0B0B0);
  Color get _cardBg => const Color(0xFF181818);
  Color get _addBtn => const Color(0xFF1F8A4C);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _cardBg,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Badges(isVeg: item.isVeg, isSpicy: item.isSpicy, green: _green),
                const SizedBox(height: 6),
                Text(
                  item.title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Container(
                      width: 8, height: 8,
                      decoration: BoxDecoration(color: _green, borderRadius: BorderRadius.circular(2)),
                    ),
                    const SizedBox(width: 6),
                    Text('Highly reordered', style: TextStyle(color: _textMuted, fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 6),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: LinearProgressIndicator(
                    value: item.reorderScore,
                    minHeight: 5,
                    color: _green,
                    backgroundColor: const Color(0xFF2A2A2A),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${RestaurantMenuScreen._rupee}${item.priceInr}',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                ),
                const SizedBox(height: 6),
                Text(
                  item.description,
                  style: TextStyle(color: _textMuted, fontSize: 13, height: 1.25),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _RoundIcon(icon: Icons.bookmark_border, onTap: () {}),
                    const SizedBox(width: 10),
                    _RoundIcon(icon: Icons.share_outlined, onTap: () {}),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 160,
            height: 120,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        color: const Color(0xFF2A2A2A),
                        alignment: Alignment.center,
                        child: const Icon(Icons.image_not_supported, color: Colors.white30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('ADD'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _addBtn,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      textStyle: const TextStyle(fontWeight: FontWeight.w700),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Badges extends StatelessWidget {
  final bool isVeg;
  final bool isSpicy;
  final Color green;
  const _Badges({required this.isVeg, required this.isSpicy, required this.green});

  @override
  Widget build(BuildContext context) {
    final veg = Container(
      width: 16, height: 16,
      decoration: BoxDecoration(border: Border.all(color: green, width: 2), borderRadius: BorderRadius.circular(3)),
      child: Center(child: Container(width: 8, height: 8, decoration: BoxDecoration(color: green, borderRadius: BorderRadius.circular(2)))),
    );
    final chili = isSpicy
        ? Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Icon(Icons.whatshot, size: 16, color: Colors.redAccent),
          )
        : const SizedBox.shrink();

    return Row(children: [veg, chili]);
  }
}

class _RoundIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _RoundIcon({required this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF262626),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.more_horiz, size: 0),
        ),
      ),
    );
  }
}
