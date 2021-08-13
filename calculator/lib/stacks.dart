class Stacks {
  List<dynamic> _data = [];
  void push(dynamic x) {
    _data.add(x);
  }

  void pop() {
    _data.removeLast();
  }

  dynamic top() {
    return _data.last;
  }

  bool isEmpty() {
    return _data.isEmpty;
  }
}
