with AUnit.Test_Fixtures;

package Output.Project.Tests is

   -----------------------------------------------------------------------------
   --  fixture
   -----------------------------------------------------------------------------

   package Parent_Pkg renames AUnit.Test_Fixtures;

   type Test_Fixture is new Parent_Pkg.Test_Fixture
   with record
      Parent_Directory : access String                 := null;
      Project_Name     : access String                 := null;
      Project_Object   : access Model.Project.Object_T := null;
   end record;

   --------------
   --  Set_Up  --
   --------------

   overriding
   procedure Set_Up
     (Test : in out Test_Fixture);

   -----------------------------------------------------------------------------
   --  test routines
   -----------------------------------------------------------------------------

   procedure Test_Create_File_Tree
     (Test : in out Test_Fixture);

end Output.Project.Tests;
