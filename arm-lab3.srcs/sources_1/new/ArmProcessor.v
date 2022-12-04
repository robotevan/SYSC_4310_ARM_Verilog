`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 01:14:43 PM
// Design Name: 
// Module Name: ArmProcessor
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


`define INSTRUCTION_SIZE     32


module ArmProcessor(
    input clk,
    input rst
    );
    
    // global flags
    wire is_hazard; // used to stall stages
    wire is_branch; // used to notify IF/ID of branch
    wire [`INSTRUCTION_SIZE-1:0]branch_addr; // address to branch to 
    wire [`INSTRUCTION_SIZE-1:0]pc_val; // current value of pc
    wire [`INSTRUCTION_SIZE-1:0]instruction_val; // instruction from IF
  
    // setup fetch stage and IF/ID register
    IF_stage(
        .clk(clk),
        .rst(rst),
        .stall(is_hazard),
        .branch(is_branch),
        .branch_addr(branch_addr),
        .pc_out(pc_val),
        .instruction_out(instruction_val)
        );
  
endmodule
