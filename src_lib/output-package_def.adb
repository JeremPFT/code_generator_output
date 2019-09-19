package body Output.Package_Def is

   Template : Templates.Class_T := null;

   Directory : constant String :=
     "d:/Users/jpiffret/AppData/Roaming/Dropbox/projets_perso/"
     & "ada/code_generator_output/templates";

   File : constant String := "package.tads";

   ------------------
   --  Initialize  --
   ------------------

   procedure Initialize
     (Package_Name : in String)
   is
   begin
      Template := Templates.Create (Template_Directory_Name => Directory,
                                    Template_File_Name      => File,
                                    Tag_Names               => Tag_Names);

      Template.Add_Value (Tag_Name => "NAME",
                          Value    => Package_Name);
   end Initialize;

   -----------------
   --  To_String  --
   -----------------

   function To_String
     return String
   is
   begin
      return Template.To_String;
   end To_String;

   -------------
   --  Print  --
   -------------

   procedure Print
   is
   begin
      T_IO.Put_Line (To_String);
   end Print;

end Output.Package_Def;
