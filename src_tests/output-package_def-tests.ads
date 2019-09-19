with AUnit.Test_Fixtures;

package Output.Package_Def.Tests is

   -----------------------------------------------------------------------------
   --  fixture
   -----------------------------------------------------------------------------

   package Parent_Pkg renames AUnit.Test_Fixtures;

   type Test_Fixture is new Parent_Pkg.Test_Fixture
     with null record;

   -----------------------------------------------------------------------------
   --  test routines
   -----------------------------------------------------------------------------

   procedure Test_Simple_Package
     (Test : in out Test_Fixture);

end Output.Package_Def.Tests;
