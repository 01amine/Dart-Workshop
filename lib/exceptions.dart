void main() {
  try {
    double a = 1 / 0;
  } catch (e) {
    double a = 0;
    print(e);
  } finally {
    print("finished error handling");
  }
  ;
}
