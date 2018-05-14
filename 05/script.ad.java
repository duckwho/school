Script started on 2018-03-02 10:48:07-0500
[1m[7m%[27m[1m[m                                                                                                                           
/* Split.java is a class and program that splits a string
 * into two substrings.
 *
 * Begun by: Serita Nelesen
 * Completed by: Ian Park
 * Date: 03/02/2017
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
    // main program
    public static void main(String[] args)
    {
        Scanner keyboard = new Scanner(System.in);
        // prompt for the string
        System.out.println("\nTo split a string, enter the string: ");
        String theString = keyboard.next();

        // prompt for splitting position
        System.out.println("\nEnter the split position: ");
        int position = keyboard.nextInt();

        //Create list, compute results and print
        String [] resultList = new String[2];
        splitter(theString, position, resultList);
        System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);

    }

    /* splitter() splits a string according to the position specified
     * Receive:   theString - the string to be split
     *        pos - the position at which to split
     *            resList - an array of strings in which to place results
     *****************************************************/
    // replace this line with a definition for splitter
    public static void splitter(String theString, int pos, String[] results)
    {
        String newValue = theString.substring(0, pos);
        String nextValue = theString.substring(pos,
                                               theString.length());
        results[0] = newValue;
        results[1] = nextValue;
    }


}
[1m[7m%[27m[1m[m                                                                                                                           
cat: Split.javajavac: No such file or directory
/* Split.java is a class and program that splits a string
 * into two substrings.
 *
 * Begun by: Serita Nelesen
 * Completed by: Ian Park
 * Date: 03/02/2017
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
    // main program
    public static void main(String[] args)
    {
        Scanner keyboard = new Scanner(System.in);
        // prompt for the string
        System.out.println("\nTo split a string, enter the string: ");
        String theString = keyboard.next();

        // prompt for splitting position
        System.out.println("\nEnter the split position: ");
        int position = keyboard.nextInt();

        //Create list, compute results and print
        String [] resultList = new String[2];
        splitter(theString, position, resultList);
        System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);

    }

    /* splitter() splits a string according to the position specified
     * Receive:   theString - the string to be split
     *        pos - the position at which to split
     *            resList - an array of strings in which to place results
     *****************************************************/
    // replace this line with a definition for splitter
    public static void splitter(String theString, int pos, String[] results)
    {
        String newValue = theString.substring(0, pos);
        String nextValue = theString.substring(pos,
                                               theString.length());
        results[0] = newValue;
        results[1] = nextValue;
    }


}
[1m[7m%[27m[1m[m                                                                                                                           
[1m[7m%[27m[1m[m                                                                                                                           

To split a string, enter the string: 
sh  hello

Enter the split position: 
3 0

The first part is 
 and the second part is hello
[1m[7m%[27m[1m[m                                                                                                                           

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
[1m[7m%[27m[1m[m                                                                                                                           

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
[1m[7m%[27m[1m[m                                                                                                                           

Script done on 2018-03-02 10:48:56-0500