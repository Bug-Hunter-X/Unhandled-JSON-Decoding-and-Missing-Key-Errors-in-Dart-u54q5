```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      // Accessing jsonData here
      print(jsonData['key']); //This might throw an error if 'key' is not present.
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately
  }
}
```