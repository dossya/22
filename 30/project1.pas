program project1;

const
  N = 30;
var
  a: array [1..N] of integer;
  k, i: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  for i := 1 to N - 1 do
    if (a[i] mod 2 = 1) then
    begin
      k := a[i];
      a[i] := a[i + 1];
      a[i + 1] := k;
    end;
  if (a[3] mod 2 = 0) then
    writeln(a[3])
  else
    writeln('no');
  readln();
end.
