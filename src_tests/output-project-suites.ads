with AUnit.Test_Caller;
with AUnit.Test_Suites;

with Suite_Utils;

with Output.Project.Tests;
use Output.Project.Tests; --  test fixtures & routines

package Output.Project.Suites is

   Test_Unit_Name : constant String := "Output.Project";

   package Runner is new AUnit.Test_Caller
     (Test_Fixture => Output.Project.Tests.Test_Fixture);

   package Utils is new Suite_Utils (Runner => Runner);
   use Utils; -- Runner_Array, Test_Method_Array, Name_Array, "+"

   Methods : constant Test_Method_Array :=
     (
      1 => Test_Create_File_Tree'Access
     );

   Names : constant Name_Array (Methods'Range) :=
     (
      1 => +"Test_Create_File_Tree"
     );

   function Suite return AUnit.Test_Suites.Access_Test_Suite;

end Output.Project.Suites;
