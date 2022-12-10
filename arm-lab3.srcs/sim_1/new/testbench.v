`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2022 09:47:31 PM
// Design Name: 
// Module Name: testbench
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

`define DATA_WIDTH 32
`define REG_FILE_IN_WIDTH 5


// OPCODES
`define R_TYPE 7'b0110000
`define I_TYPE 7'b0000001
`define S_TYPE 7'b0000010
`define B_TYPE 7'b0000011
`define U_TYPE 7'b0000100
`define J_TYPE 7'b0000101

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


//define reg testbench
`define R0  0
`define R1  1
`define R2  2
`define R3  3
`define R4  4
`define R5  5
`define R6  6
`define R7  7
`define R8  8
`define R9  9
`define R10 10
`define R11 11
`define R12 12
`define R13 13
`define R14 14
`define R15 15
`define R16 16
`define R17 17
`define R18 18
`define R19 19
`define R20 20



module testbench;
    reg clk;
    reg rst;
    reg program_cpu = 0;
    reg [31:0]ins_addr = 32'b0;
    reg [31:0]ins_val = 32'b0;
    
    wire [31:0]pc;
    wire [31:0]curr_instruction;
    wire [`REG_FILE_IN_WIDTH-1:0]reg_write_addr;
    wire [`DATA_WIDTH-1:0]reg_write_data;
    
    
    wire [4:0]rs1;
    wire [4:0]rs2;
    wire [`DATA_WIDTH-1:0]alu_input_a;
    wire [`DATA_WIDTH-1:0]alu_input_b;
    wire [`DATA_WIDTH-1:0]alu_result;
    wire alu_zero;
    wire alu_branch;
    
    wire mem_read;
    wire mem_write;
    wire [`DATA_WIDTH-1:0]mem_addr;
    wire [`DATA_WIDTH-1:0]mem_write_val;
    wire [`DATA_WIDTH-1:0]mem_read_val;
    
    ArmProcessor cpu (.clk(clk),
        .rst(rst),
        .program_mode(program_cpu),
        .instruction_write_addr(ins_addr),
        .instruction_write_val(ins_val),
        .pc_val(pc),
        .curr_instruction(curr_instruction),
        .regfile_write_addr(reg_write_addr),
        .regfile_write_data(reg_write_data),
        .reg1_addr(rs1),
        .reg2_addr(rs2),
        .alu_in_a(alu_input_a),
        .alu_in_b(alu_input_b),
        .alu_result_out(alu_result),
        .alu_branch_flag(alu_branch),
        .alu_zero_flag(alu_zero),
        .data_mem_read(mem_read),
        .data_mem_write(mem_write),
        .data_mem_addr(mem_addr),
        .data_mem_write_val(mem_write_val),
        .data_mem_read_val(mem_read_val)
        );
 
 function [31:0] r_instruction;
    input [9:0]op;
    input [4:0]rd;
    input [4:0]rs1;
    input [4:0]rs2;
    begin
    r_instruction = {op[9:3], rs2, rs1, op[2:0], rd, `R_TYPE};end
endfunction

 function [31:0] i_instruction;
    input [9:0]op;
    input [4:0]rd;
    input [4:0]rs1;
    input [11:0]imm;
    begin
    i_instruction = {imm, rs1, op[2:0], rd, `I_TYPE};end
endfunction
 
 
 function [31:0] s_instruction;
    input [9:0]op;
    input [4:0]rs1;
    input [4:0]rs2;
    input [11:0]imm;// mem offset
    begin
    s_instruction = {imm[11:5], rs2, rs1, op[2:0], imm[4:0], `S_TYPE};end
endfunction

 function [31:0] b_instruction;
    input [9:0]op;
    input [4:0]rs1;
    input [4:0]rs2;
    input [11:0]imm;// mem offset
    begin
    b_instruction = {imm[11], imm[9:4], rs2, rs1, op[2:0], imm[3:0], imm[10], `B_TYPE};end
endfunction


 function [31:0] j_instruction;
    input [4:0]rd; // contents to store
    input [19:0]imm;// mem offset
    begin
    j_instruction = {imm[19], imm[9:0], imm[10], imm[18:11], rd, `J_TYPE};end
endfunction


  initial begin 
   forever #10  clk = !clk;
  end
 
 
 
 initial begin 
    //start clock and reset cpu     
    clk = 1'b0 ; rst = 1'b0 ;
    #0 rst = 1'b1 ;
    #20 rst = 1'b0 ;


    // put cpu in programming mode
    #10 program_cpu = 1;
    
    `define MY_FUNCTION    4  // function at PC[4]
    `define FOR_LOOP_RANGE 10 // 10 iterartions
    `define ARR_1_OFF      0  // array 1 at mem location 0
    `define ARR_2_OFF      12 // array 2 at mem loaction 1
    
    // start programming
    #20 ins_addr = 1; ins_val = j_instruction(`R20, `MY_FUNCTION); // call function
    
    // MY_FUNCTIION function at pc[4]
    #20 ins_addr = 4; ins_val = i_instruction(`ADD, `R6, `R6, 0); // int i = 0
    #20 ins_addr = 5; ins_val = i_instruction(`ADD, `R7, `R7, `FOR_LOOP_RANGE);  // int i <= 10
    `define LOOP 6 // start of loop   
    
    #20 ins_addr = 6; ins_val = s_instruction(`SW, `R6, `R6, `ARR_1_OFF);  // arr1[i] = i
    #20 ins_addr = 7; ins_val = i_instruction(`SAL, `R10, `R6, 1); // i = i*2 => r10
    #20 ins_addr = 8; ins_val = s_instruction(`SW, `R6, `R10, `ARR_2_OFF);  // arr2[i] = i * 2
   
    #20 ins_addr = 9; ins_val = i_instruction(`ADD, `R6, `R6, 1); // i++
    #20 ins_addr = 10; ins_val = b_instruction(`BLEQ, `R6, `R7, `LOOP); // for i <= 10
    
    // once done loop, load arr1[9] -> R10, 
    // once done loop, load arr2[9] -> R11, 
    // AN R10, R11
    #20 ins_addr = 11; ins_val = i_instruction(`ADD, `R19, `R19, 9); // use for 9th element
    #20 ins_addr = 12; ins_val = i_instruction(`LW, `R10, `R19, `ARR_1_OFF); // i++
    #20 ins_addr = 13; ins_val = i_instruction(`LW, `R11, `R19, `ARR_2_OFF); // i++

    #20  program_cpu = 0; ins_addr  = 0; ins_val = 0;

 end 
endmodule
