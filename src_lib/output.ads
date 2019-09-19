with Ada.Characters.Latin_1;
with Ada.Text_IO;

package Output is

   type String_Access_T is access all String;

   package Dbg renames Ada.Text_IO;
   package T_IO renames Ada.Text_IO;

   package Latin_1 renames Ada.Characters.Latin_1;

   EOL_Dos  : constant String := Latin_1.CR & Latin_1.LF;
   EOL_Unix : constant String := Latin_1.LF & "";
   EOL      : String renames EOL_Dos;

end Output;
