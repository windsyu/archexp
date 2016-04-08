`timescale 1ns / 1ps

module IfIdRegisters (

		input clock,
		input reset,

		input [31:0] if_pc_4,
		input [31:0] if_instruction,

		output reg [31:0] id_pc_4 = 4,
		output reg [31:0] id_instruction = 0
	);

	always @(posedge clock or posedge reset) begin
		if (reset) begin
			id_pc_4 <= 4;
			id_instruction <= 0;
		end else begin
			id_pc_4 <= if_pc_4;
			id_instruction <= if_instruction;
		end
	end
endmodule