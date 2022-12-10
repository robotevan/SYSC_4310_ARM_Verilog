`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 03:31:34 AM
// Design Name: 
// Module Name: data_memory
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

`define DATA_SIZE     32  // 32 bit instructions
`define MEM_SIZE      64  // rows  

module data_memory(
    input clk,
    input rst,
    input [`DATA_SIZE-1:0]mem_address,
    input [`DATA_SIZE-1:0]mem_write_data,
    input mem_read,
    input mem_write,
    output reg [`DATA_SIZE-1:0]read_data
    );
    
    reg [`DATA_SIZE-1:0]mem[`MEM_SIZE-1:0];
    integer i;
    
    always @(*) begin
        if (rst) begin
            for(i = 0; i < `MEM_SIZE; i = i + 1)
                mem[i] <= `DATA_SIZE'b0;
        end
        if (mem_read)
            read_data <= mem[mem_address];
    end 
    
    always @(negedge clk)begin
                if (mem_write)
            mem[mem_address] <= mem_write_data;  
    end
endmodule
