with AUnit.Test_Caller;
with AUnit.Test_Suites;

with Suite_Utils;

with Output.Package_Def.Tests;
use Output.Package_Def.Tests; --  test fixtures & routines

package Output.Package_Def.Suites is

   Test_Unit_Name : constant String := "Output.Package_Def";

   package Runner is new AUnit.Test_Caller
     (Test_Fixture => Output.Package_Def.Tests.Test_Fixture);

   package Utils is new Suite_Utils (Runner => Runner);
   use Utils; -- Runner_Array, Test_Method_Array, Name_Array, "+"

   Methods : constant Test_Method_Array :=
     (
      1 => Test_Simple_Package'Access
     );

   Names : constant Name_Array (Methods'Range) :=
     (
      1 => +"Test_Simple_Package"
     );

   function Suite return AUnit.Test_Suites.Access_Test_Suite;

end Output.Package_Def.Suites;
