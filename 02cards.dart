void main() {
  var deck = new Deck();
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
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }

  String toString() {
    return cards.toString();
  }
}

class Card {
  String suit;
  String rank;

  Card(this.suit, this.rank);

  void display() {
    print(capitalize("${this.suit} of ${this.rank}"));
  }

  toString() {
    return "${this.rank}:${this.suit}\n";
  }
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
