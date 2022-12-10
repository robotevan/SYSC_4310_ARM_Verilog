`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 01:58:09 PM
// Design Name: 
// Module Name: Pc
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


module Pc(
    input clk,              // clock signal
    input rst,              // reset signal
    input pc_write,         // Write addr_in to pc (PC_SRC for mux)
    input [31:0] addr_in,   // new address for pc
    output [31:0] addr_out  // output address  of pc
    );
    
    reg [31:0]pc = 32'b0; // hold value of pc
    
    assign addr_out = pc;
    
    always @(posedge clk)begin
        if (rst)
            pc <= 32'b0; // clear address
        else begin
            pc <= pc +1;
            if (pc_write)
                pc <= addr_in;
        end
    end    

endmodule
