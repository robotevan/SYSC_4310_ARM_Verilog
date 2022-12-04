`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 03:46:19 AM
// Design Name: 
// Module Name: IF_stage
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

module IF_stage(
     input clk,
     input rst,
     input stall,
     input branch,
     input [`INSTRUCTION_SIZE-1:0]branch_addr,
     output [`INSTRUCTION_SIZE-1:0]pc_out,
     output [`INSTRUCTION_SIZE-1:0]instruction_out
    );
    
    
    // initialize pc
    wire [`INSTRUCTION_SIZE-1:0]pc_in_addr;
    wire [`INSTRUCTION_SIZE-1:0]pc_out_addr;
 
    Pc program_counter(
        .clk(clk),
        .rst(rst),
        .pc_write(branch), // write pc_in_addr on branch
        .addr_in(pc_in_addr),
        .addr_out(pc_out_addr)
        );
 
    // initialie instruction memory
    wire [`INSTRUCTION_SIZE-1:0]instruction;
    
    InstructionMemory instruction_mem(
        .clk(clk),
        .rst(rst),
        .addr_in(pc_out_addr),
        .instruction_out(instruction)
        );
 
endmodule
