module full_adder (
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);

  wire p;

  assign p = a^b;
  assign sum = p ^ carry_in;
  assign carry_out = (a & b) | (p & carry_in);

endmodule