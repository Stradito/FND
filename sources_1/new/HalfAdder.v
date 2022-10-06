`timescale 1ns / 1ps



module HalfAdder(i_a,i_b,o_sum,o_carry);
input i_a,i_b;
output o_sum,o_carry;

assign o_sum =  i_a ^ i_b;
assign o_carry = i_a & i_b;


endmodule
