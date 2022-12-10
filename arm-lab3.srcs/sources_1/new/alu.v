`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 11:59:59 AM
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define DATA_SIZE     32

`define ADD  10'b0000000001
`define SUB  10'b0000000010
`define AND  10'b0000000011
`define SAL  10'b0000000100
`define SAR  10'b0000010101
`define OR   10'b0000000110
`define SW   10'b0000000111
`define LW   10'b0000001000
`define BLEQ 10'b0000001001
`define J    10'b0000001010

module alu(
    input clk,
    input [`DATA_SIZE-1:0]in_a,
    input [`DATA_SIZE-1:0]in_b,
    input [9:0]alu_op,
    output reg zero_flag,
    output reg [`DATA_SIZE-1:0]alu_out
    );
    
    
    
    always @(*) begin    
    case (alu_op)
         `ADD:
            alu_out <= in_a + in_b;
         `SUB:begin
            alu_out <= in_a - in_b;
            zero_flag <= alu_out == 0 ? 1 : 0;
            end
         `AND:
            alu_out <= in_a && in_b;
         `SAL:
            alu_out <= in_a << in_b;
         `SAR:
            alu_out <= in_a >> in_b;
         `OR:
            alu_out <= in_a || in_b;
         `LW:
            alu_out <= in_a + in_b;
         `SW:
            alu_out <= in_a + in_b;
         `BLEQ:begin
            alu_out <= in_a - in_b;
            zero_flag <= alu_out[31];
            end
         default:begin
            alu_out  <= 32'b0;
            zero_flag <= 1;
         end
        endcase
        
        
    end
    
endmodule
