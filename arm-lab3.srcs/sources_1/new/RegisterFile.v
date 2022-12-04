`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 12:58:23 PM
// Design Name: 
// Module Name: RegisterFile
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

// 13 general purpose
// 1 link register

`define NUM_REG 16
`define INSTRUCTION_SIZE 32


module RegisterFile(
    input clk,
    input rst,
    input reg_write,
    input [`INSTRUCTION_SIZE-1: 0]read_reg_1,
    input [`INSTRUCTION_SIZE-1: 0]read_reg_2,
    input [`INSTRUCTION_SIZE-1: 0]write_reg_1,
    input [`INSTRUCTION_SIZE-1: 0]write_data,
    
    output reg[`INSTRUCTION_SIZE-1: 0]read_data_1,
    output reg[`INSTRUCTION_SIZE-1: 0]read_data_2
    );
    
    integer i; // for iterator
    
    // 16 registers 32 bit wide
    reg [`INSTRUCTION_SIZE-1: 0]reg_mem[`NUM_REG-1: 0];
    
endmodule
