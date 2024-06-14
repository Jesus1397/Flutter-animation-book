class Book {
  final String title;
  final String subtitle;
  final String image;

  Book({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<Book> books = [
  Book(
    title: 'Wink Poppy Midnighr',
    subtitle: 'April Genevieve Tucholke',
    image: 'assets/book1.jpg',
  ),
  Book(
    title: 'Walking with Miss Millie',
    subtitle: 'Tamara Bundy',
    image: 'assets/book2.jpg',
  ),
  Book(
    title: 'Trio',
    subtitle: 'Sarah Tolmie',
    image: 'assets/book3.jpg',
  ),
  Book(
    title: 'The Jungle Book',
    subtitle: 'Rudyard Kipling',
    image: 'assets/book4.jpg',
  ),
  Book(
    title: 'The Marker of Swans',
    subtitle: "Paraig O'Donnell",
    image: 'assets/book5.jpg',
  ),
];
