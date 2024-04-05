void main() {
  // logic operators (&&-жана , ||- же)

  bool isTrue =true;
  bool isFalse=false;


  var result = isTrue && isFalse;
  var result2 = isTrue&& isFalse||isFalse;
  var result3 = isTrue&& isFalse||isTrue;
  print(result3);
}