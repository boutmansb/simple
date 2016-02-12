// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

InputElement toDoInput;
UListElement toDoList;
ButtonElement deleteAll;

void main() {
  toDoInput = querySelector('#to-do-input');
  toDoList = querySelector('#to-do-list');
  toDoInput.onChange.listen(addToDoItem);

  deleteAll = querySelector('#delete-all');
  deleteAll.onClick.listen((e) => toDoList.children.clear());
}

void addToDoItem(Event event) {
  var newTodo = new LIElement();
  newTodo.text = toDoInput.value;
  newTodo.onClick.listen((e) => newTodo.remove());
  toDoInput.value = null;
  toDoList.children.add(newTodo);
}