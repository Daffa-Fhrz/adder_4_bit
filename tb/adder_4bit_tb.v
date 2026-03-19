module adder_4bit_tb;

reg [3:0] a;
reg [3:0] b;
reg carry_in;
wire [3:0] sum;
wire carry_out;

adder_4bit adder_dut(
    .a(a),
    .b(b),
    .carry_in(carry_in),
    .sum(sum),
    .carry_out(carry_out)
);

initial begin
    $dumpfile("sim/waveform.vcd");
    $dumpvars(0, adder_4bit_tb);
end

initial begin
    
    a = 4;
    b = 5;
    carry_in = 0;
    #10
    $display("a = %b b = %b carry_in = %b sum = %b carry_out = %b", a, b, carry_in, sum,carry_out);
    #10

    a = 4;
    b = 10;
    carry_in = 0;
    #10
    $display("a = %b b = %b carry_in = %b sum = %b carry_out = %b", a, b, carry_in, sum,carry_out);
    #10

    a = 5;
    b = 6;
    carry_in = 1;
    #10
    $display("a = %b b = %b carry_in = %b sum = %b carry_out = %b", a, b, carry_in, sum,carry_out);
    #10

    a = $random;
    b = $random;
    carry_in = $random;
    #10
    $display("a = %b b = %b carry_in = %b sum = %b carry_out = %b", a, b, carry_in, sum,carry_out);
    #10

    $finish;
end

endmodule