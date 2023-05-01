import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  final String searchTerm;

  const SearchPage({Key? key, required this.searchTerm}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> _imageUrls = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Recipe for "${widget.searchTerm}"'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: _imageUrls.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _imageUrls[index],
                  fit: BoxFit.cover,
                );
              },
            ),
    );
  }

  void _fetchImages() async {
    try {
      var response = await http.get(
          Uri.parse(
              'https://api.unsplash.com/search/photos?query=${widget.searchTerm}&per_page=2'),
          headers: {
            'Authorization':
                'Client-ID Ms0TD5H2E_2HvdFF8jc7rf2l_vUO3WGpoRdOXPWS7p8'
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var imageUrls = List<String>.from(
            data['results'].map((result) => result['urls']['regular']));
        setState(() {
          _imageUrls = imageUrls;
          _isLoading = false;
        });
      } else {
        throw Exception('Failed to search images');
      }
    } catch (e) {
      print(e);
      setState(() {
        _isLoading = false;
      });
    }
  }
}
