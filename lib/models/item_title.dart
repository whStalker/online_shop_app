class ItemData {
  final String price;
  final String title;
  final String article;

  ItemData({
    required this.price,
    required this.title,
    required this.article,
  });
}

class ItemDataModel {
  static List<ItemData> getItemData() {
    return [
      ItemData(
        price: '125 600 сум',
        title: 'Коврик для мыши Varmilo',
        article: '16349822',
      ),
      ItemData(
        price: '125 600 сум',
        title: 'Коврик для мыши Varmilo',
        article: '16349822',
      ),
      ItemData(
        price: '125 600 сум',
        title: 'Коврик для мыши Varmilo',
        article: '16349822',
      ),
    ];
  }
}
