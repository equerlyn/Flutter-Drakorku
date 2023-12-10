import 'package:flutter/material.dart';
import 'package:drakorku/model/drakor_list.dart';

class DetailDrama extends StatelessWidget {
  final Drakor drama;

  const DetailDrama({Key? key, required this.drama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Drakorku ${drama.dramaName}',
          ),
          backgroundColor: Colors.black38,
        ),
        body:  LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 800) {
                return DetailWebPage(drama: drama);
              } else {
                return DetailMobilePage(drama: drama);
              }
            },
        ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Drakor drama;

  const DetailWebPage({Key? key, required this.drama}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 28,
          ),
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.drama.dramaImg,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            height: 170,
                            width: double.infinity,
                            padding: const EdgeInsets.only(bottom: 16),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: widget.drama.imageCastsUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget> [
                              Text(
                                widget.drama.dramaName,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.drama.yearOfRelease.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_rounded,
                                        color: Colors.orangeAccent,
                                      ),
                                      const SizedBox(width: 4.0), // Adjust the spacing as needed
                                      Text(
                                        widget.drama.rating.toString(),
                                      ),
                                    ],
                                  ),
                                  const FavoriteButton(),
                                ],
                              ),
                              Row(
                                children: <Widget> [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 4.0), // Adjust the margin as needed
                                    child: Icon(
                                      Icons.live_tv_rounded,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  Text(
                                    widget.drama.originalNetwork,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  const Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(
                                        Icons.play_circle_filled_rounded,
                                        color: Colors.lightBlueAccent
                                    ),
                                  ),
                                  Text(
                                    widget.drama.numberOfEpisodes.toString(),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                  children: <Widget> [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 4.0),
                                      child: Icon(
                                        Icons.access_time_filled_rounded,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text(
                                        "Aired On: ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    Text(
                                        widget.drama.airedOn.join(', ')
                                    ),
                                  ]
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Icon(Icons.category_rounded, color: Colors.blueGrey),
                                  const SizedBox(width: 8.0),
                                  Expanded(
                                    child: Text(
                                      widget.drama.genre.join(', '),
                                      softWrap: true,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.drama.synopsis,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class DetailMobilePage extends StatelessWidget {
  final Drakor drama;

  const DetailMobilePage({Key? key, required this.drama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(drama.dramaImg),
                const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: FavoriteButton(),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Text(
                    drama.dramaName,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    drama.yearOfRelease.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(
                        Icons.star_rounded,
                        color: Colors.orangeAccent,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        drama.rating.toString(),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(
                        Icons.live_tv_rounded,
                        color: Colors.redAccent
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        drama.originalNetwork,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(
                        Icons.play_circle_filled_rounded,
                        color: Colors.lightBlueAccent
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        drama.numberOfEpisodes.toString(),
                        // style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // horizontal
                crossAxisAlignment: CrossAxisAlignment.center, // vertical
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.access_time_filled_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    "Aired On: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Text(
                    drama.airedOn.join(', ')
                  ),
                ]
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.category_rounded,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Text(
                    drama.genre.join(', '),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                drama.synopsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(drama.imageCastsUrls.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            drama.imageCastsUrls[index],
                            width: 140,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          drama.mainCasts[index],
                          style: const TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}