class Badminton {
  String name;
  String type;
  int price;
  String url;

  Badminton(this.name, this.type, this.price, this.url);

  static List<Badminton> listBadminton = [
    Badminton(
      'Carbon Sava Deck',
      'Sport',
      99,
      'assets/images/carbon_sava_deck.webp',
    ),
    Badminton(
      'Fascino',
      'Sport',
      89,
      'assets/images/fascino.webp',
    ),
    Badminton(
      'Fascino',
      'Sport',
      89,
      'assets/images/twitter_rider_nx.webp',
    ),
    Badminton(
      'Vivente F4',
      'Sport',
      89,
      'assets/images/vivente_f4.webp',
    ),
  ];
}
