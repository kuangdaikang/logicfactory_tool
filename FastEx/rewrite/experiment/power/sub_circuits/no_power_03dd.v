// Benchmark "top" written by ABC on Fri Sep 15 19:21:46 2023

module top ( 
    n_1, n_2, n_3, n_4,
    n_9  );
  input  n_1, n_2, n_3, n_4;
  output n_9;
  wire new_n6_, new_n7_, new_n8_, new_n9_, new_n10_, new_n11_;
  assign new_n6_ = ~n_1 & n_3;
  assign new_n7_ = n_1 & ~n_3;
  assign new_n8_ = ~new_n6_ & ~new_n7_;
  assign new_n9_ = ~n_4 & new_n8_;
  assign new_n10_ = n_2 & ~new_n8_;
  assign new_n11_ = ~n_1 & ~new_n10_;
  assign n_9 = ~new_n9_ & ~new_n11_;
endmodule


