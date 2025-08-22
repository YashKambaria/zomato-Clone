/// Restaurant Screen — minimal form & preview
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});
  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _address = TextEditingController();
  final _imageUrl = TextEditingController();
  String _cuisine = 'Other';
  int _rating = 3;

  static final List<Map<String, dynamic>> _items = [];

  @override
  void dispose() { _name.dispose(); _address.dispose(); _imageUrl.dispose(); super.dispose(); }

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    final item = {
      'name': _name.text.trim(),
      'address': _address.text.trim(),
      'cuisine': _cuisine,
      'rating': _rating,
      'imageUrl': _imageUrl.text.trim(),
    };
    setState(() => _items.add(item));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Restaurant added')));
    _formKey.currentState?.reset();
    _name.clear(); _address.clear(); _imageUrl.clear(); _cuisine='Other'; _rating=3;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Add Restaurant')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (v) => (v==null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _address,
                decoration: const InputDecoration(labelText: 'Address'),
                validator: (v) => (v==null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _cuisine,
                items: const ['Italian','Indian','Chinese','American','Other']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (v) => setState(() => _cuisine = v ?? 'Other'),
                decoration: const InputDecoration(labelText: 'Cuisine'),
              ),
              const SizedBox(height: 10),
              Row(children: [
                const Text('Rating'),
                Expanded(child: Slider(
                  value: _rating.toDouble(), min:1, max:5, divisions:4, label:'$_rating',
                  onChanged: (v) => setState(() => _rating = v.round()),
                )),
              ]),
              TextFormField(
                controller: _imageUrl,
                decoration: const InputDecoration(labelText: 'Image URL (optional)'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _submit, child: const Text('Submit')),
            ]),
          ),
          const SizedBox(height: 24),
          Text('Preview', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          ..._items.map((e) => Card(child: ListTile(
            title: Text(e['name'] ?? ''),
            subtitle: Text('${e['cuisine']} · ${e['rating']}/5\n${e['address']}'),
            trailing: (e['imageUrl'] ?? '').isEmpty ? const Icon(Icons.restaurant) : const Icon(Icons.image_outlined),
          ))),
        ]),
      ),
    );
  }
}
