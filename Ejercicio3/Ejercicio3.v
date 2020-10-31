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

module FlipFlopJK (input wire J, input wire K, input wire clk,input wire reset, input wire enable,output Q);
wire D;
	assign D = (~Q & J)|(Q & ~K);
	FLipFlopD1bit FFD_1 (D, clk, reset, enable, Q);
endmodule