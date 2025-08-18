import 'package:flutter/material.dart';

bool isFilter = false;

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<String> filters = [
    "Under 30 mins",
    "Loved by friends",
    "Top Rated",
    "Nearby",
  ];

  void onFilterSelected(String filter) {
    setState(() {
      if (selectedFilter.contains(filter)) {
        selectedFilter.remove(filter);
        filters.remove(filter);
        filters.insert(filters.length - 1, filter);
      } else {
        selectedFilter.add(filter);
        filters.remove(filter);
        filters.insert(0, filter);
      }
      if (selectedFilter.isNotEmpty) {
        isFilter = true;
      } else {
        isFilter = false;
      }
    });
  }

  Set<String> selectedFilter = {};
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 8),
            //dropdown filter
            _FilterDropdown(),

            //normal filters
            ...filters.map((filter) {
              final bool isSelected = selectedFilter.contains(filter);
              return GestureDetector(
                onTap: () {
                  onFilterSelected(filter);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color:
                        isSelected
                            ? Colors.green
                            : Color.fromARGB(255, 24, 23, 28),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Text(
                    filter,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _FilterDropdown extends StatefulWidget {
  const _FilterDropdown({super.key});

  @override
  State<_FilterDropdown> createState() => _FilterDropdownState();
}

class _FilterDropdownState extends State<_FilterDropdown> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("To be made"),
              ),
            );
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isFilter ? Colors.green : Color.fromARGB(255, 24, 23, 28),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade700),
        ),
        child: Text(
          "Filter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: isFilter ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
