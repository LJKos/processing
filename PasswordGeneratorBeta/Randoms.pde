class Randoms {
  
  void display() {
    
    if (ra == false && rb == false && rc == false && rd == false) {
      r = null;
      print("null");
    } else {
      
      String[] numbers = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
      if (ra == true) {
        r1 = numbers[int(random(numbers.length))];
      } else {
        r1 = null;
      }
      
      String[] chars = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "å", "ä", "ö"};
      if (rb == true) {
        r2 = chars[int(random(chars.length))];
      } else {
        r2 = null;
      }
      
      String[] caPchars = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "Å", "Ä", "Ö"};
      if (rc == true) {
        r3 = caPchars[int(random(caPchars.length))];
      } else {
        r3 = null;
      }
      
      String[] symbs = {"!", "?", " ", "-", "_", "#", "%", "&", "/"};
      if (rd == true) {
        r4 = symbs[int(random(symbs.length))];
      } else {
        r4 = null;
      }
      
      String[] all = {r1, r2, r3, r4};
      r = all[int(random(all.length))];
      
    }
    
  }
  
}