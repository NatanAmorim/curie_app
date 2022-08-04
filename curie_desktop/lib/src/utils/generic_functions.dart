// Remove todos valores "null" de List ou Map
// A função precisa ser recursiva para considerar "nested values"
// Todo: _value.isNotEmpty
dynamic removeNull(dynamic params) {
  if (params is Map) {
    final Map<dynamic, dynamic> _map = <dynamic, dynamic>{};
    params.forEach((dynamic key, dynamic value) {
      final dynamic _value = removeNull(value);
      if (_value != null) {
        _map[key] = _value;
      }
    });
    if (_map.isNotEmpty) {
      return _map;
    }
  } else if (params is List) {
    final dynamic _list = <dynamic>[];
    for (final dynamic value in params) {
      final dynamic _value = removeNull(value);
      if (_value != null) {
        _list.add(_value);
      }
    }
    if (_list.isNotEmpty) {
      return _list;
    }
  } else if (params != null) {
    return params;
  }
  return null;
}
