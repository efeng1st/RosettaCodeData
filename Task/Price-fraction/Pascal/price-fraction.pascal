Program PriceFraction(output);

const
  limit: array [1..20] of real =
           (0.06, 0.11, 0.16, 0.21, 0.26, 0.31, 0.36, 0.41, 0.46, 0.51,
            0.56, 0.61, 0.66, 0.71, 0.76, 0.81, 0.86, 0.91, 0.96, 1.01);
  price: array [1..20] of real =
           (0.10, 0.18, 0.26, 0.32, 0.38, 0.44, 0.50, 0.54, 0.58, 0.62,
            0.66, 0.70, 0.74, 0.78, 0.81, 0.86, 0.90, 0.94, 0.98, 1.00);

var
  cost: real;
  i, j: integer;

begin
  randomize;
  for i := 1 to 10 do
  begin
    cost := random;
    j := high(limit);
    while cost < limit[j] do
      dec(j);
    writeln (cost:6:4, ' -> ', price[j+1]:4:2);
  end;
end.
