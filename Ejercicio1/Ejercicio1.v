module FLipFlopD1bit(input wire D,input wire clk,input wire reset, input wire enable,output Q);
reg Q;
	always @(posedge clk or posedge reset)  
		begin
			if(reset)
				begin
					Q <= 0; 
				end
			else if(enable==1) 
				begin
					Q <= D;
				end
			else
				begin
					Q <= Q;
		end
	end
endmodule 

module FLipFlopD2bits(input wire [1:0] D,input wire clk,input wire reset, input wire enable,output [1:0] Q);
FLipFlopD1bit FFD1_1 (D [0], clk, reset, enable, Q [0]);
FLipFlopD1bit FFD1_2 (D [1], clk, reset, enable, Q [1]);
endmodule

module FLipFlopD4bits(input wire [3:0] D,input wire clk,input wire reset, input wire enable,output [3:0] Q);
FLipFlopD2bits FFD2_1 (D [1:0], clk, reset, enable, Q [1:0]);
FLipFlopD2bits FFD2_2 (D [3:2], clk, reset, enable, Q [3:2]);
endmodule