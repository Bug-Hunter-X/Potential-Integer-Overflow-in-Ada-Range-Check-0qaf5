```ada
function Check_Range(Value : Integer) return Boolean is
begin
   if Value < 10 or Value > 100 then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(50);
   if Result then
      Put_Line("Value is within range");
   else
      Put_Line("Value is out of range");
   end if;

   Result := Check_Range(1000);
   if Result then
      Put_Line("Value is within range");
   else
      Put_Line("Value is out of range");
   end if;
end Example;
```