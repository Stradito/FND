`timescale 1ns / 1ps

module fourbitfulladder(
    input [3:0]i_a,i_b,
    input i_c,
    output [3:0] o_sum,
    output o_carry
);

    wire w_carry_0, w_carry_1, w_carry_2;
    wire [3:0] a;

    assign a = {4{i_c}}^i_b;

    FullAdder FA0(
        .i_a(i_a[0]),
        .i_b(a[0] ),
        .i_c(i_c),
        .o_sum(o_sum[0]),
        .o_carry(w_carry_0)
    );

    FullAdder FA1(
        .i_a(i_a[1]),
        .i_b(a[1]),
        .i_c(w_carry_0),
        .o_sum(o_sum[1]),
        .o_carry(w_carry_1)
    );

    FullAdder FA2(
        .i_a(i_a[2]),
        .i_b(a[2]),
        .i_c(w_carry_1),
        .o_sum(o_sum[2]),
        .o_carry(w_carry_2)
    );

    FullAdder FA3(
        .i_a(i_a[3]),
        .i_b(a[3]),
        .i_c(w_carry_2),
        .o_sum(o_sum[3]),
        .o_carry(o_carry)
    );

endmodule
