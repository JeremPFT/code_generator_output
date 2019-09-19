with Ada.Directories;
with Ada.Environment_Variables;

with Assertions; use Assertions;
with File_IO;

with Model.Types.Package_Def; use Model.Types.Package_Def;

package body Output.Project.Tests is

   Parent_Directory : constant String :=
     Ada.Environment_Variables.Value ("HOME");

   Project_Name : constant String :=
     "generated_project";

   --------------
   --  Set_Up  --
   --------------

   overriding
   procedure Set_Up
     (Test : in out Test_Fixture)
   is
      pragma Unreferenced (Test);

      Target : constant String :=
        File_IO.Compose (Left  => Parent_Directory,
                         Right => Project_Name);
   begin
      if File_IO.Exists (Target) then
         T_IO.Put_Line ("removing " & Target);
         --  Ada.Directories.Delete_Tree (Target);
      end if;
   end Set_Up;

   -----------------------------
   --  Test_Create_File_Tree  --
   -----------------------------

   procedure Test_Create_File_Tree
     (Test : in out Test_Fixture)
   is
      Exists : Boolean := False;
   begin
      Test.Project_Object
        := Model.Project.Create
          (Name             => Project_Name,
           Output_Directory => Parent_Directory,
           Package_List     => Package_Def_Vectors.Empty_Vector);

      Generate (Test.Project_Object.all);

      Exists := File_IO.Exists
        (Test.Project_Object.Get_Output_Directory);

      Check_Boolean (Expected => True,
                     Got      => Exists);
   end Test_Create_File_Tree;


end Output.Project.Tests;
