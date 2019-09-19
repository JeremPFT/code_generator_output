with File_IO;

package body Output.Project is

   -----------------------
   --  Generate_Output  --
   -----------------------

   -----------------------
   --  Generate_Output  --
   -----------------------

   procedure Generate
     (Object : in Model.Project.Object_T)
   is
      package F_IO renames File_IO;

      Previous_Working_Dir : constant String := F_IO.Current_Directory;
   begin
      if not F_IO.Exists (Object.Get_Output_Directory) then
         F_IO.Mkdir (Object.Get_Output_Directory);
      end if;

      F_IO.Set_Working_Directory (Object.Get_Output_Directory);

      if not F_IO.Exists (Object.Get_Name) then
         F_IO.Mkdir (Object.Get_Name);
      end if;

      F_IO.Set_Working_Directory (Previous_Working_Dir);
   end Generate;


end Output.Project;
