module exp(a,x,y);
  input [3:0]a;
  output x,y;
  
  //Gate-level modelling
  wire nota,notb,notc,notd,and3_1,and3_2,and3_3,and3_4,and3_5,and3_6,and3_7,and3_8,and2_1,and2_2,and2_3,and2_4,and2_5,and2_6;

  not(nota,a[3]);
  not(notb,a[2]);
  not(notc,a[1]);
  not(notd,a[0]);
  and(and3_1,notb,notc,notd);
  and(and3_2,nota,notc,notd);
  and(and3_3,notb,notc,nota);
  and(and3_4,notb,nota,notd);
  and(and3_5,a[3],a[2],a[1]);
  and(and3_6,a[3],a[2],a[0]);
  and(and3_7,a[2],a[1],a[0]);
  and(and3_8,a[3],a[1],a[0]);
  
  and(and2_1,a[3],a[2]);
  and(and2_2,a[1],a[0]);
  and(and2_3,a[2],a[0]);
  and(and2_4,a[2],a[1]);
  and(and2_5,a[3],a[1]);
  and(and2_6,a[3],a[0]);

  or(x,and3_1,and3_2,and3_3,and3_4,and3_5,and3_6,and3_7,and3_8);
  or(y,and2_1,and2_2,and2_3,and2_4,and2_5,and2_6);

  // //Behavioural modelling
  // //for 'x'
  // if((a[3]==0 && a[2]==0 && a[1]==1 && a[0]==1)||(a[3]==0 && a[2]==1 && a[1]==0 && a[0]==1)||(a[3]==0 && a[2]==1 && a[1]==1 && a[0]==0)||(a[3]==1 && a[2]==0 && a[1]==0 && a[0]==1)||(a[3]==1 && a[2]==0 && a[1]==1 && a[0]==0)||(a[3]==1 && a[2]==1 && a[1]==0 && a[0]==0))
  //   x=0;
  // else
  //   x=1;

  // //for 'y'
  // if((a[3]==0 && a[2]==0 && a[1]==0 && a[0]==0)||(a[3]==0 && a[2]==0 && a[1]==0 && a[0]==1)||(a[3]==0 && a[2]==0 && a[1]==1 && a[0]==0)||(a[3]==0 && a[2]==1 && a[1]==0 && a[0]==0)||(a[3]==1 && a[2]==0 && a[1]==0 && a[0]==0))
  //   y=0;
  // else
  //   y=1;

endmodule