`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 04:49:27 PM
// Design Name: 
// Module Name: ID_stage
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


module ID_stage(
    input clk,
    intput rst,
    input [`INSTRUCTION_SIZE-1:0]pc_addr_in,
    input [`INSTRUCTION_SIZE-1:0]instruction_in,
    input [`INSTRUCTION_SIZE-1:0]writeback_data_in,
    input [0:4]write_back_reg_in,
    input writeback_signal_in,
    output mem_write_out,
    output mem_read_out,
    output ex_flag_out,
    output if_flush_out,
    output id_flush_out,
    output ex_flush_out,
    output pc_write_out,
    output pc_addr_out,
    );

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
    
     // initialie control unit
    
    
    // initialize register file
    
    wire [0:4]rs1; // first operand reg
    wire [0:4]rs2; // second operand reg
    wire [0:4]rd;  // restult reg
    assign rs1 = 
    
    register_file reg_file(
        .clk(clk),
        .rst(rst),
        .read_reg_1(reg_1_addr),
        .read_reg_2(reg_2_addr),
        .write_back(
 

   
    
    
    // initialize hazard detection unit


    
    //flush signals
    assign id_flush = 
    
    
endmodule
