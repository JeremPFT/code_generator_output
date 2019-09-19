with Templates;

package Output.Package_Def is

   function "+" (Item : String) return not null access String renames Templates."+";

   Tag_Names : Templates.Tag_Names_Array_T := (1 => +"NAME");

   procedure Initialize
     (Package_Name : in String);

   function To_String
     return String;

   procedure Print;

end Output.Package_Def;
