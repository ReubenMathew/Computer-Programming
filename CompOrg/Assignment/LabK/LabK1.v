module LabK;


reg [31:0] x;    // a 32-bit register
reg [0:0] one;   // a 1-bit  register
reg [1:0] two;   // a 2-bit  register 
reg [2:0] three; // a 3-bit  register

initial
begin
    $display("time = %5d, x = %b", $time, x);
    x = 32'hffff0000;
    $display("time = %5d, x = %b", $time, x);
    x = x + 2;
    $display("time = %5d, x = %b", $time, x);
    one = &x;
    two = x[1:0];
    three = {one, two};
    $display("one = %b, two = %b, three = %b", one, two, three);
    $finish;
end

endmodule
