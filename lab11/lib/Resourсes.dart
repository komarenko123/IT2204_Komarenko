class Resources {
  int coffeeBeans;
  int milk;
  int water;
  int cash;

  Resources({
    this.coffeeBeans = 0,
    this.milk = 0,
    this.water = 0,
    this.cash = 0,
  });

  int getResource(String resourceName) {
    return _getResourceMap()[resourceName] ?? 0;
  }

  void setResource(String resourceName, int value) {
    final map = _getResourceMap();
    if (map.containsKey(resourceName)) {
      switch (resourceName) {
        case 'coffeeBeans':
          coffeeBeans = value;
          break;
        case 'milk':
          milk = value;
          break;
        case 'water':
          water = value;
          break;
        case 'cash':
          cash = value;
          break;
      }
    }
  }


  Map<String, int> _getResourceMap() {
    return {
      'coffeeBeans': coffeeBeans,
      'milk': milk,
      'water': water,
      'cash': cash,
    };
  }
}