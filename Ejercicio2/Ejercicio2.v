module FlipFlopD1bit(input wire D,input wire clk,input wire reset, input wire enable,output Q);
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

module FLipFlopT1bit (input wire clk,input wire reset, input wire enable,output Q);
	FlipFlopD1bit FFD_1 (~Q, clk, reset, enable, Q);
endmodule