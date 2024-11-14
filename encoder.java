import java.util.Scanner;

public class encoder {
	public static void main (String[]args){
Scanner scanner = new Scanner (System.in);
 System.out.println ("why  ");
	String message = scanner.nextLine(); 
System.out.println ("enter the key: ");
	int key = scanner.nextInt();	
	String encode = " ";
         for (int i=0; i < message.length(); i++){
		char letter = message.charAt(i);
		char eLetter = (char) (letter + key);

		encode += eLetter;
		}	
		System.out.println( encode);
	}
}
