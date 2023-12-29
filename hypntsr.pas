{$m $800,0,0 }

program hypntsr;

uses crt, dos;

Const
  Seconds = 1;
  Counter: Word = 0;
  CurrentValue: Byte = 0;

{$f+}
procedure new_int; interrupt;
begin
  Inc(Counter);

  If Counter>(Trunc(18.2*Seconds)) Then
    Begin
      CurrentValue := Mem[10020:14];

      if CurrentValue = 50 then
        begin
          sound(CurrentValue);
          delay(100);
          nosound;
        end;

      Mem[10020:14] := 55;

      Counter := 0;
    End;
end;
{$f-}


begin
  setintvec($1C, addr(new_int));
  writeln('Hypn TSR v0.1 Loaded!');
  keep(0)
end.