import 'package:RecipeApp/search_page.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});
  @override
  State<SearchBar> createState() => _SearchBarTab();
}

class _SearchBarTab extends State<SearchBar> {
  final TextEditingController _searchC = TextEditingController();
  bool _searching = false;

  @override
  void dispose() {
    _searchC.clear(); // <-- add this line
    super.dispose();
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _searchC,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(),
                ),
                contentPadding: EdgeInsets.zero),
            onSubmitted: (value) {
              _search(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          _searching ? const CircularProgressIndicator() : const Text(''),
        ],
      ),
    );
  }

  void _search(String term) async {
    setState(() {
      _searching = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _searching = false;
    });

    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchPage(searchTerm: term),
      ),
    ).then((_) {
      // This code will run when the SearchPage is popped off the stack
      _searchC.clear();
    });
  }
}
