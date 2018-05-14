Script started on 2018-03-02 10:47:27-0500
[1m[7m%[27m[1m[m                                                                                                                            [m[27m[24m[J- [00m[K[?2004hccat split.adb[?2004l
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Ian Park
-- Date: 03/02/2017
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.
   -- Receive: The_String, the string to be split,
   --          Position, the split index.
   -- PRE: 0 < Position <= The_String.length().
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
procedure split(
   The_String : in String; Position : in Integer;
   Part1 : out String; Part2 : out String) is
begin
   Move(The_String(The_String'First .. Position), Part1);
   Move(The_String(Position + 1 .. The_String'Last), Part2);
end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;
[1m[7m%[27m[1m[m                                                                                                                            [m[27m[24m[J- [00m[K[?2004hggnatmake a split.adb[?2004l
gcc -c split.adb
gnatbind -x split.ali
gnatlink split.ali
[1m[7m%[27m[1m[m                                                                                                                            [m[27m[24m[J- [00m[K[?2004h../split[?2004l
To split a string, enter the string: hello
Enter the split position: 0
The first part is                                         
 and the second part is hello                                   
[1m[7m%[27m[1m[m                                                                                                                            [m[27m[24m[J- [00m[K[?2004h./split[?2004l
To split a string, enter the string: hello
Enter the split position: 3
The first part is hel                                     
 and the second part is lo                                      
[1m[7m%[27m[1m[m                                                                                                                            [m[27m[24m[J- [00m[K[?2004h./split[?2004l
To split a string, enter the string: hello
Enter the split position: 5
The first part is hello                                   
 and the second part is                                         
[1m[7m%[27m[1m[m                                                                                                                            [m[27m[24m[J- [00m[K[?2004h./split       [?2004l

Script done on 2018-03-02 10:47:58-0500
