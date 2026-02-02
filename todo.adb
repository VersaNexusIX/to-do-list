with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

procedure Cute_Todo is

   C_Reset   : constant String := ASCII.ESC & "[0m";
   C_Pink    : constant String := ASCII.ESC & "[95m";
   C_Mint    : constant String := ASCII.ESC & "[92m";
   C_Blue    : constant String := ASCII.ESC & "[96m";
   C_Cream   : constant String := ASCII.ESC & "[93m";
   C_Gray    : constant String := ASCII.ESC & "[90m";
   C_Bold    : constant String := ASCII.ESC & "[1m";

   type Task_Item is record
      Description : Unbounded_String;
      Is_Done     : Boolean := False;
   end record;

   package Task_Vectors is new Ada.Containers.Vectors
     (Index_Type   => Positive,
      Element_Type => Task_Item);

   use Task_Vectors;

   Todo_List : Vector;
   Choice    : Integer;

   procedure Print_Header is
   begin
      New_Line;
      Put_Line (C_Pink & "       .・。.・゜✭・.・✫・゜・。.");
      Put_Line (C_Blue & "      ☁️   MY KAWAII TODO LIST  ☁️");
      Put_Line (C_Pink & "       .・。.・゜✭・.・✫・゜・。." & C_Reset);
      New_Line;
   end Print_Header;

   procedure Show_Menu is
   begin
      Put_Line (C_Cream & "    ╭──────────────────────────────╮");
      Put_Line (C_Cream & "    │ " & C_Pink & "1. 🌸 Add New Task           " & C_Cream & "│");
      Put_Line (C_Cream & "    │ " & C_Mint & "2. ✨ Check / Uncheck Task   " & C_Cream & "│");
      Put_Line (C_Cream & "    │ " & C_Blue & "3. ✏️  Edit Task              " & C_Cream & "│");
      Put_Line (C_Cream & "    │ " & C_Gray & "4. 🗑️  Delete Task            " & C_Cream & "│");
      Put_Line (C_Cream & "    │ " & C_Pink & "5. 🏃 Exit                   " & C_Cream & "│");
      Put_Line (C_Cream & "    ╰──────────────────────────────╯" & C_Reset);
      New_Line;
   end Show_Menu;

   procedure View_Tasks is
   begin
      if Todo_List.Is_Empty then
         Put_Line (C_Gray & "    (Nothing to do yet! Time to relax ~ ☕)" & C_Reset);
      else
         for I in Todo_List.First_Index .. Todo_List.Last_Index loop
            Put (C_Blue & Integer'Image(I) & ". " & C_Reset);

            if Todo_List(I).Is_Done then
               Put (C_Mint & "[♥] " & To_String(Todo_List(I).Description));
               Put ("  (Good job!)" & C_Reset);
            else
               Put (C_Reset & "[ ] " & To_String(Todo_List(I).Description));
            end if;

            New_Line;
         end loop;
      end if;
      New_Line;
   end View_Tasks;

   procedure Add_Task is
      Input : Unbounded_String;
   begin
      Put (C_Pink & "    What do you want to achieve? " & C_Reset);
      Input := To_Unbounded_String(Get_Line);
      if Length(Input) > 0 then
         Todo_List.Append ((Description => Input, Is_Done => False));
         Put_Line (C_Mint & "    Added! You got this! (*^ω^)" & C_Reset);
      end if;
   end Add_Task;

   procedure Toggle_Task is
      Index : Integer;
   begin
      if Todo_List.Is_Empty then
         Put_Line (C_Gray & "    No tasks to check! " & C_Reset);
         return;
      end if;

      Put (C_Blue & "    Index to toggle: " & C_Reset);
      begin
         Get(Index);
         Skip_Line;

         if Index >= Todo_List.First_Index and Index <= Todo_List.Last_Index then
            declare
               Item : Task_Item := Todo_List(Index);
            begin
               Item.Is_Done := not Item.Is_Done;
               Todo_List.Replace_Element(Index, Item);
               Put_Line (C_Mint & "    Status updated! ✨" & C_Reset);
            end;
         else
            Put_Line (C_Pink & "    Oops! Invalid index. >_<" & C_Reset);
         end if;
      exception
         when others =>
            Skip_Line;
            Put_Line (C_Pink & "    Please enter a number! " & C_Reset);
      end;
   end Toggle_Task;

   procedure Edit_Task is
      Index : Integer;
   begin
      if Todo_List.Is_Empty then
         Put_Line (C_Gray & "    No tasks to edit! " & C_Reset);
         return;
      end if;

      Put (C_Blue & "    Index to edit: " & C_Reset);
      begin
         Get(Index);
         Skip_Line;

         if Index >= Todo_List.First_Index and Index <= Todo_List.Last_Index then
            declare
               New_Desc : Unbounded_String;
            begin
               Put (C_Pink & "    New description: " & C_Reset);
               New_Desc := To_Unbounded_String(Get_Line);
               if Length(New_Desc) > 0 then
                  declare
                     Item : Task_Item := Todo_List(Index);
                  begin
                     Item.Description := New_Desc;
                     Todo_List.Replace_Element(Index, Item);
                     Put_Line (C_Mint & "    Updated successfully! ✏️" & C_Reset);
                  end;
               end if;
            end;
         else
            Put_Line (C_Pink & "    Oops! Invalid index." & C_Reset);
         end if;
      exception
         when others =>
            Skip_Line;
            Put_Line (C_Pink & "    Numbers only please! " & C_Reset);
      end;
   end Edit_Task;

   procedure Delete_Task is
      Index : Integer;
   begin
      if Todo_List.Is_Empty then
         Put_Line (C_Gray & "    Nothing to delete! " & C_Reset);
         return;
      end if;

      Put (C_Pink & "    Index to delete: " & C_Reset);
      begin
         Get(Index);
         Skip_Line;

         if Index >= Todo_List.First_Index and Index <= Todo_List.Last_Index then
            Todo_List.Delete(Index);
            Put_Line (C_Gray & "    Poof! It's gone. 💨" & C_Reset);
         else
            Put_Line (C_Pink & "    Oops! Invalid index." & C_Reset);
         end if;
      exception
         when others =>
            Skip_Line;
            Put_Line (C_Pink & "    Numbers only please! " & C_Reset);
      end;
   end Delete_Task;

begin
   Put(ASCII.ESC & "[2J" & ASCII.ESC & "[H");

   Print_Header;

   loop
      View_Tasks;
      Show_Menu;

      Put (C_Bold & "    Select option > " & C_Reset);

      begin
         Get(Choice);
         Skip_Line;
      exception
         when others =>
            Skip_Line;
            Choice := 0;
      end;

      case Choice is
         when 1 => Add_Task;
         when 2 => Toggle_Task;
         when 3 => Edit_Task;
         when 4 => Delete_Task;
         when 5 =>
            Put_Line (C_Pink & "    Bye bye! Have a lovely day! 🌸" & C_Reset);
            exit;
         when others =>
            Put_Line (C_Pink & "    Unknown option! Try again." & C_Reset);
      end case;

      New_Line;
      Put_Line (C_Gray & "    ──────────────────────────────" & C_Reset);
      New_Line;

   end loop;

end Cute_Todo;
