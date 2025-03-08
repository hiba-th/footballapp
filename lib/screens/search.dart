import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
          onChanged: (text) {
            setState(() {
              _searchText = text;
            });
            // You can also trigger the search here, depending on your needs.
          },
          autofocus: true, // Automatically focus the text field
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              setState(() {
                _searchText = '';
              });
            },
          ),
        ],
      ),
      body: Center(  // Or replace with your search results widget
        child: Text('Search Results Go Here'),
      ),
    );
  }
}