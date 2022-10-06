`timescale 1ns / 1ps

module BCDtoFND(
    input [1:0] i_digitSelect,
    input [3:0]i_a,i_b,
    input i_en,
    input i_c,

    output [3:0] o_digit,
    output [7:0] o_font,
    output [3:0] i_value,
    output o_carry
    );

    fourbitfulladder fbfulladder(
        .i_a(i_a),
        .i_b(i_b),
        .i_c(i_c),
        .o_sum(i_value),
        .o_carry(o_carry)
    );

    FND_Select_Decoder fndDigitDecoder(
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .o_digit(o_digit)
    );

    BCDtoFN_Decoder fndFontDecoder(
        .i_value(o_sum),
        .i_en(i_en),
        .o_font(o_font)
    );

endmodule
