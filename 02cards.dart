void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck);

  print(deck.deal(5));

  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = [
      "Ace",
      "One",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "King",
      "Queen",
      "Joker"
    ];

    var suits = ['Diamond', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String suit;
  String rank;

  Card({this.rank, this.suit});

  void display() {
    print(capitalize("${this.suit} of ${this.rank}"));
  }

  toString() {
    return "${this.rank}:${this.suit}\n";
  }

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
}
