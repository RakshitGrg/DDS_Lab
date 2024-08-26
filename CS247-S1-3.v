module bcd(a,b,c,d,w,x,y,z);
  input a,b,c,d;
  output w,x,y,z;

  //Data-flow modelling
  assign w = b&c;
  assign x = b&~c | a&~b&c;
  assign y = a^c;
  assign z = d;

  // //Gate-flow modelling
  // wire notc.notb,and1,and2,notd;
  // and(w,b,c);
  // not(notc,c);
  // not(notb,b);
  // and(and1,b,notc);
  // and(and2,a,notb,c);
  // or(x,and1,and2);
  // xor(y,a,c);
  // not(notd,d);
  // not(z,notd);

endmodule