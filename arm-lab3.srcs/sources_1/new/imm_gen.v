`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 03:39:41 AM
// Design Name: 
// Module Name: imm_gen
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

`define R_TYPE 7'b0110000
`define I_TYPE 7'b0000001
`define S_TYPE 7'b0000010
`define B_TYPE 7'b0000011
`define U_TYPE 7'b0000100
`define J_TYPE 7'b0000101

module imm_gen(
    input clk,
    input [31:0]imm_in,
    output reg[31:0]imm_out
    );
       
    always @(*) begin 
        case(imm_in[6:0])
            `I_TYPE:begin   // immediate type
                imm_out <= { {21{imm_in[31]}} , imm_in[30:20]};
            end
            
            `S_TYPE:begin  // store type
                imm_out <= { {21{imm_in[31]}} , imm_in[30:25], imm_in[11:8], imm_in[7]};
            end
            
            `B_TYPE:begin  // store type
                imm_out <= { {20{imm_in[31]}} ,imm_in[7], imm_in[30:25], imm_in[11:8], 1'b0};
            end 
            
            `U_TYPE:begin  // store type
                imm_out <= { imm_in[31] ,imm_in[30:20], imm_in[19:12], 13'b0};
            end
    
            `J_TYPE:begin  // store type
                imm_out <= { {12{imm_in[31]}} ,imm_in[19:12], imm_in[20], imm_in[30:25], imm_in[24:21], 1'b0};
            end
    
         endcase
    end      
endmodule
