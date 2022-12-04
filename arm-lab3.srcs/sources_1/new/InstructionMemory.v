///////////////////////////////////////////////////////////////////////////////
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

`define INSTRUCTION_SIZE     32  // 32 bit instructions
`define INSTRUCTION_MEM_SIZE 256 // Store 256 instructions

module InstructionMemory(
    input clk,
    input rst,
    input [`INSTRUCTION_SIZE-1:0]addr_in,
    output reg [`INSTRUCTION_SIZE-1:0]instruction_out
    );
    
    integer i;
    
    // 32 bit words (4 byte)
    reg [`INSTRUCTION_SIZE-1 : 0]instruction_mem[`INSTRUCTION_MEM_SIZE-1 : 0];
   
    always @(posedge clk) begin
        if (rst)
            instruction_out <= 32'b0;
        else
            instruction_out <= instruction_mem[addr_in];
    end

endmodule
