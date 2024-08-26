module tb();
  reg a,b,c,d;
  wire w,x,y,z;

  bcd dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
  );

  initial begin
    $dumpfile("CS247-S1-3.vcd");
    $dumpvars(0);
    $display("------------------------------");
    $display("A | B | C | D || W | X | Y | Z");
    $monitor("%b | %b | %b | %b || %b | %b | %b | %b",a,b,c,d,w,x,y,z);
  end

  initial begin
    a=1'b0;b=1'b0;c=1'b0;d=1'b0;
    #10;

    a=1'b0;b=1'b0;c=1'b0;d=1'b1;
    #10;

    a=1'b0;b=1'b0;c=1'b1;d=1'b0;
    #10;

    a=1'b0;b=1'b0;c=1'b1;d=1'b1;
    #10;

    a=1'b0;b=1'b1;c=1'b0;d=1'b0;
    #10;

    a=1'b1;b=1'b0;c=1'b1;d=1'b1;
    #10;

    a=1'b1;b=1'b1;c=1'b0;d=1'b0;
    #10;

    a=1'b1;b=1'b1;c=1'b0;d=1'b1;
    #10;

    a=1'b1;b=1'b1;c=1'b1;d=1'b0;
    #10;

    a=1'b1;b=1'b1;c=1'b1;d=1'b1;
    #10;
  
  end

endmodule;