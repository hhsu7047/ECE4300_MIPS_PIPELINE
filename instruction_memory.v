`timescale 1ns / 1ps
module instruction_memory (
    input wire [31:0] addr,    // Changed from 'address'
    output wire [31:0] data    // Changed from 'instruction'
);
    // Physical storage limited for simulation; first 10 addresses populated
    reg [31:0] mem [0:1023]; 

   initial begin
    $readmemb("instr.mem",mem);
end
    

    // use 31-2 
    assign data = mem[addr[31:2]]; 
endmodule