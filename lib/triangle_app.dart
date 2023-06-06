String detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];
  sides.sort();
  sides.forEach((element) {
    if (element < 1) {
      throw Exception();
    }
  });

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga Sama Sisi";
  }

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('Inequal Triangle');
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga Sama Kaki";
  }

  return "Segitiga Sembarang";
}
