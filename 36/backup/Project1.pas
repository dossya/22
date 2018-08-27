program Project1;

var
  a: array [1.. 10000] of integer;
  N, M, s, smax, k,i: integer;
begin
  readln(N, M);
  for i := 1 to M do
    Read(a[i]);
  s := 1;
  smax := 1;
  for i := 1 to M - 1 do
    if (a[i] = a[i + 1]) and (s >= smax) then
    begin
      s := s + 1;
      k := i;
      if (smax < s) then
        smax := s;
      if (smax = s) then
      begin
        if (k > i) then
          k := i;
      end;
    end;
  writeln(a[k]);
  ReadLn();
end.
