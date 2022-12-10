`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 01:29:53 PM
// Design Name: 
// Module Name: control_unit
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

`define INSTRUCTION_SIZE     32  // 32 bit instructions

// OPCODES
`define R_TYPE 7'b0110000
`define I_TYPE 7'b0000001
`define S_TYPE 7'b0000010
`define B_TYPE 7'b0000011
`define U_TYPE 7'b0000100
`define J_TYPE 7'b0000101

// funct7+funct3 operations
`define ADD  10'b0000000001
`define SUB  10'b0000000010
`define AND  10'b0000000011
`define SAL  10'b0000000100
`define SAR  10'b0000010101
`define OR   10'b0000000110
`define LW   10'b0000000111
`define SW   10'b0000001111
`define BLEQ 10'b0000001001
`define J    10'b0000001010

module control_unit(
    input clk,
    input [`INSTRUCTION_SIZE-1:0]instruction,   // input instruction type
    output reg branch,                              // signal to indicate branch
    output reg mem_read,                            // signal to indicate mem read
    output reg mem_write,                           // signal to indicate mem write
    output reg reg_write,                           // signal to indicate reg file write
    output reg mem_to_reg,                          // mem mux control
    output reg [6:0]imm_sel,                        // send instreuction type to immediate unit
    output reg alu_src,                             // control alu input mux, 0=reg, 1=imm
    output reg [9:0]alu_op                          // control signal for alu
    );
    
    
    // wire 
    wire [6:0]funct7;
    wire [2:0]funct3;
    assign funct7 = instruction[31:25];
    assign funct3 = instruction[14:12];
    


    
    always @(*) begin      
        imm_sel <= instruction[6:0];
        branch <= 0;
        // set control signal
        case(instruction[6:0])
            `R_TYPE: begin // register type
                branch <= 0;
                mem_read <= 0;
                mem_write <= 0;
                reg_write <= 1;
                mem_to_reg <= 0;
                alu_op <= {funct7, funct3};
                alu_src <= 0; // ise reg
            end
            `I_TYPE: begin  // immediate type
                branch <= 0;
                mem_read <= alu_op == `LW ? 1 : 0;
                mem_write <= 0;
                alu_op <= {funct7, funct3};
                mem_to_reg <= alu_op == `LW ? 1 : 0;
                reg_write <= 1;

                alu_src <= 1; // use imm  
            end
            `S_TYPE: begin  // store type
                branch <= 0;
                mem_read <= 0;
                mem_write <= 1;
                reg_write <= 1;
                mem_to_reg <= 0;
                alu_op <= {7'b0, funct3};
                alu_src <= 1; // use imm
            end
            `B_TYPE: begin  // store type
                branch <= 1;
                mem_read <= 0;
                mem_write <= 0;
                mem_to_reg  <= 0;
                reg_write <= 1;
                alu_op <= {7'b0000001, funct3};
                alu_src <= 0; // use imm
            end
            `U_TYPE: begin  // store type
                branch <= 1;
                mem_read <= 0;
                mem_write <= 0;
                mem_to_reg <= 0;
                reg_write <= 1;
                alu_op <= {7'b0, funct3};
                alu_src <= 1; // use imm
            end
            `J_TYPE: begin  // store type
                branch <= 1;
                mem_read <= 0;
                mem_write <= 0;
                mem_to_reg <= 0;
                reg_write <= 1;
                alu_op <= {7'b0, funct3};
                alu_src <= 1; // use imm
            end
            7'b0:begin
                mem_write <= 0;
                branch <= 0;
            end
         endcase    
    end
endmodule
