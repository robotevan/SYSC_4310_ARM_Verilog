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


`define DATA_SIZE        32
`define REG_FILE_IN_SIZE 5

module ArmProcessor(
    input clk,
    input rst,
    
    input program_mode,
    input [`DATA_SIZE-1:0]instruction_write_addr,
    input [`DATA_SIZE-1:0]instruction_write_val,
    
    
    // debug outputs
    output [`DATA_SIZE-1:0]pc_val,
    output [`DATA_SIZE-1:0]curr_instruction,
    output regfile_write,
    output [`REG_FILE_IN_SIZE-1:0]regfile_write_addr,
    output [`DATA_SIZE-1:0]regfile_write_data,
    output [4:0]reg1_addr,
    output [4:0]reg2_addr,
    output [`DATA_SIZE-1:0]alu_in_a,
    output [`DATA_SIZE-1:0]alu_in_b,
    output [`DATA_SIZE-1:0]alu_result_out,
    output alu_branch_flag,
    output alu_zero_flag,
    output data_mem_read,
    output data_mem_write,
    output [`DATA_SIZE-1:0]data_mem_addr,
    output [`DATA_SIZE-1:0]data_mem_write_val,
    output [`DATA_SIZE-1:0]data_mem_read_val
    );
    
    wire pc_write_sel;
    wire pc_clk;
    wire [`DATA_SIZE-1:0]pc_write_addr;
    wire [`DATA_SIZE-1:0]pc_addr_out;
    assign pc_write_addr = immediate_out >> 1;
    assign pc_write_sel = branch && alu_zero_out ? 1 : 0;
    assign pc_val = pc_addr_out;
    assign pc_clk = program_mode ? 0 : clk; // stall pc while in program m
    
    wire [`DATA_SIZE-1:0] instruction; // current instruction
    assign curr_instruction = instruction;
    
    wire [31:0]instruction_src = program_mode ? instruction_write_addr : pc_addr_out;
    wire instruction_read_src = program_mode ? 0 : clk;
    
    wire [`REG_FILE_IN_SIZE-1:0]read_reg_1_num;
    wire [`REG_FILE_IN_SIZE-1:0]read_reg_2_num;
    wire [`REG_FILE_IN_SIZE-1:0]write_reg_addr;   
    wire reg_file_write;
    wire [`DATA_SIZE-1:0]reg_write_val;
    wire [`DATA_SIZE-1:0]read_data_1_val;
    wire [`DATA_SIZE-1:0]read_data_2_val;
    assign read_reg_1_num = instruction[19:15];
    assign read_reg_2_num = instruction[24:20];
    assign write_reg_addr = instruction[11:7];
    
    wire [`DATA_SIZE-1:0]immediate_out;
    
    wire alu_zero_out;
    wire [`DATA_SIZE-1:0] alu_result; 
    wire [`DATA_SIZE-1:0] alu_in_mux;    
    wire branch;
    wire mem_read;
    wire mem_write;
    wire reg_write;
    wire mem_to_reg;
    wire [6:0]imm_sel;
    wire alu_src;
    wire [9:0]aluop;
    assign alu_in_mux = alu_src ? immediate_out : read_data_2_val;

    
    wire [`DATA_SIZE-1:0]wb_out;
    wire [`DATA_SIZE-1:0]mem_out;
    assign wb_out = mem_to_reg ? mem_out : alu_result;
    assign reg_write_val = wb_out;
    
    // debug flags/outputs
    assign reg1_addr = read_reg_1_num;
    assign reg2_addr = read_reg_2_num;
    assign alu_in_a = read_data_1_val;
    assign alu_in_b = alu_in_mux;
    assign alu_result_out = alu_result;
    assign alu_branch_flag = branch;
    assign alu_zero_flag  = branch;
    assign data_mem_read = mem_read;
    assign data_mem_write = mem_write;
    assign data_mem_addr = alu_result;
    assign data_mem_write_val = read_data_2_val;
    assign data_mem_read_val = mem_out;
    assign regfile_write_addr = write_reg_addr;
    assign regfile_write_data = wb_out;
    assign regfile_write = reg_write;
    
    // setup PC /////////////////////////////////////////////////////////////
    Pc program_counter(
        .clk(pc_clk),
        .rst(rst),
        .pc_write(pc_write_sel),
        .addr_in(pc_write_addr),
        .addr_out(pc_addr_out)
        );
        
    // setup Instruction Memory //////////////////////////////////////////////
    data_memory instruction_mem(
        .clk(clk),
        .rst(rst),
        .mem_address(instruction_src),
        .mem_write_data(instruction_write_val),
        .mem_read(instruction_read_src),
        .mem_write(program_mode),
        .read_data(instruction)
        );
   
   // setup Register file //////////////////////////////////////////////////////
   register_file reg_file(
       .clk(clk),
       .rst(rst),
       .read_reg_1(read_reg_1_num),
       .read_reg_2(read_reg_2_num),
       .write_sig(reg_write),
       .write_reg(write_reg_addr),
       .write_data(reg_write_val),
       .read_data_1(read_data_1_val),
       .read_data_2(read_data_2_val)
       );

    // setup Control Unit //////////////////////////////////////////////////////
    control_unit control (
        .clk(clk),
        .instruction(instruction),
        .branch(branch),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_write(reg_write),
        .mem_to_reg(mem_to_reg),
        .imm_sel(imm_sel),
        .alu_src(alu_src),
        .alu_op(aluop)
        );
        
     // setup immgen Unit //////////////////////////////////////////////////////'
     imm_gen immediate_gen(
        .clk(clk),
        .imm_in(instruction),
        .imm_out(immediate_out)
        );
        
    // setup ALU ///////////////////////////////////////////////////////////////////
    alu alu_unit(
        .clk(clk),
        .in_a(read_data_1_val),
        .in_b(alu_in_mux),
        .alu_op(aluop),
        .zero_flag(alu_zero_out),
        .alu_out(alu_result)
        );
        
    // setup Memory /////////////////////////////////////////////////////////////////// 
    data_memory memory(
        .clk(clk),
        .rst(rst),
        .mem_address(alu_result),
        .mem_write_data(read_data_2_val),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .read_data(mem_out)
        );
   
endmodule
