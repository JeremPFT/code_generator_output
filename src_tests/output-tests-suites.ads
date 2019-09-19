with AUnit.Test_Suites;

with Output.Package_Def.Suites;
with Output.Project.Suites;

package Output.Tests.Suites is

   function Suite return AUnit.Test_Suites.Access_Test_Suite;

   type Suite_Array_T is array (Positive range <>) of AUnit.Test_Suites.Access_Test_Suite;

   Suites : constant Suite_Array_T :=
     (
      1 => Output.Package_Def.Suites.Suite
      ,
      2 => Output.Project.Suites.Suite
     );

end Output.Tests.Suites;
