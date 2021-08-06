// Java code
// Your code has to be inside a class

public class Ruth {
// Your class is named Ruth. Should be similar to the name of your file...i.e Ruth.java

  public static void main(String[] args) {
    
    // Initialize your variables
    String Name = "Ruth Nanjala";
    String Email = "ruthnanjala97@gmail.com";
    String SlackUName = "@Nanje";
    String Biostack = "Genomics & Data Science";
    String Twitter = "@Ruthnanje";
   
    // Initialize the variable hamming distance
    int d = 0;
    
    // Slack length is equal to twitter length   
    if (SlackUName.length() == Twitter.length()) {
      // System.out.println("Slack length is equal to twitter length");
      for (int i = 0; i < SlackUName.length(); ++i) {
        if(SlackUName.charAt(i) != Twitter.charAt(i)) {
          d = d+1; 
        }
      }

    // Slack length is longer than twitter length
    } else if (SlackUName.length() > Twitter.length()) {
      // System.out.println("Slack length is greater than twitter length");
      int diff = SlackUName.length() - Twitter.length();
      for (int i = 0; i < Twitter.length(); ++i) {
        if(SlackUName.charAt(i) != Twitter.charAt(i)) {
          d = d+1;
        }
      }
      d = d + diff;

    // Slack length is shorter than twitter length
    } else {
      // System.out.println("Twitter length is greater than slack length");
      int diff = Twitter.length() - SlackUName.length();
      for (int i = 0; i < SlackUName.length(); ++i) {
        if(SlackUName.charAt(i) != Twitter.charAt(i)) {
          d = d+1;
        }
      }
      d = d + diff;
    }

    // Print out the output
    String full = Name + "," + Email + "," + SlackUName + "," + Biostack + "," + Twitter + "," + d;
    System.out.println(full);
  }    
} 





