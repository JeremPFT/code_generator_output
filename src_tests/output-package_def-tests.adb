with Assertions; use Assertions;

package body Output.Package_Def.Tests is

   --  Directory : constant String :=
   --    "d:/Users/jpiffret/AppData/Roaming/Dropbox/"
   --    & "projets_perso/ada/code_generator_output/templates";

   --  Template_File_Name : constant String :=
   --    "package.tads";

   ---------------------------
   --  Test_Simple_Package  --
   ---------------------------

   procedure Test_Simple_Package
     (Test : in out Test_Fixture)
   is
      pragma Unreferenced (Test);

      Expected : constant String :=
        "package A_Simple_Package is"
        & EOL_Unix
        & EOL_Unix
        & "end A_Simple_Package;";
   begin
      Initialize (Package_Name => "a_simple_package");

      Check_String (Expected => Expected, Got => To_String);
   end Test_Simple_Package;


end Output.Package_Def.Tests;
