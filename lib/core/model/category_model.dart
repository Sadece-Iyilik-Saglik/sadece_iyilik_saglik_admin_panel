class Category {
  final String title;
  bool isSelected;
  Category(this.title, this.isSelected);
}

List<Category> categoryList = [
  Category("Sınavlar", true),
  Category("Makaleler", false),
  Category("Sınav ekle", false),
  Category("Makale ekle", false),
];
