`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 04:21:50 AM
// Design Name: 
// Module Name: register_file
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
`define NUM_REGISTERS        32  // 32 general purpose registers
module register_file(
    input clk,
    input rst,
    input [0:4]read_reg_1, // first read reg
    input [0:4]read_reg_2, // second read reg
    input write_back, // signal for write
    input [0:4]write_reg, // reg to write to from control unit
    input [`INSTRUCTION_SIZE-1:0]write_data, // data to write
    output[`INSTRUCTION_SIZE-1:0]read_data_1, // first data output
    output[`INSTRUCTION_SIZE-1:0]read_data_2  // second data output
    );
    
    reg [`INSTRUCTION_SIZE-1:0]registers[NUM_REGISTERS-1:0];
    integer i;
    
    // assign outputs to registers, always happens so use assign rather than in always
    assign read_data_1 = registers[read_reg_1];
    assign read_data_2 = registers[read_reg_2];
    
    // logic for rst and write bac
    always @(posedge clk) begin
        if (rst) begin
            for(i = 0; i < `NUM_REGISTERS; i = i + 1)
                registers <= `INSTRUCTION_SIZE-1'b0;
        end
        
        else if (write_back) // write to register file
            registers[write_reg] <= write_data;
    end
endmodule
