import 'package:flutter/material.dart';

class ViewMoreScreen extends StatefulWidget {
  const ViewMoreScreen({super.key});

  @override
  State<ViewMoreScreen> createState() => _ViewMoreScreenState();
}

class _ViewMoreScreenState extends State<ViewMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trendidng Hashtags'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          //replace with our own icon data.
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh9.png?alt=media&token=0b1b5e9b-250e-4795-a4ee-32303f2ccfc6',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh3.png?alt=media&token=d886f097-89fb-4e2f-b07b-673df572f365',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh15.png?alt=media&token=6a9c1cd0-213d-442c-b78c-e0847e5a00d4',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh8.png?alt=media&token=5db9ca87-7005-4bab-a061-b17ca3c10bfc',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh6.png?alt=media&token=a5bbf4b3-fdf3-488e-b4dc-490f223087c9',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh1.png?alt=media&token=d1c010e6-31d2-4b50-9e3a-b36185749c62',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh17.png?alt=media&token=4a92b3c8-2f20-4a7b-9f51-4a33b245bdfd',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://firebasestorage.googleapis.com/v0/b/stylehintreview.appspot.com/o/trendhashtag%2Fh7.png?alt=media&token=e4ff4e0d-ab3e-4afa-8413-e05538893fe4',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
