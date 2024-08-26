module tb();
  reg [3:0]a;
  wire x,y;

  exp dut(
    .a(a),
    .x(x),
    .y(y)
  );

  initial begin
    $dumpfile("CS247-S2-1.vcd");
    $dumpvars(0);
    $display("---------------------------------------");
    $display("A | B | C | D || VoteResult | Majority");
    $monitor("%b | %b | %b | %b ||     %b      |    %b",a[3],a[2],a[1],a[0],x,y);
  end

  initial begin
    a = 4'b0000;
    repeat(15) #10 a = a+4'b0001;
  end

endmodule