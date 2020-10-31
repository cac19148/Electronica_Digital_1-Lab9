module Ejercicio1_tb();

reg clk, enable, reset; 
reg [3:0]D;
wire [3:0]Q; 

FLipFlopD4bits FFD4b (D, clk, reset, enable, Q);

initial begin
	clk=1;
	forever #5 clk = ~clk;  
end 

initial begin

	#1 $display("");
	$display("Ejercicio 1");
    $display(" D ENABLE | Q ");
    $display("---------|--");
    $monitor(" %d   %d    | %d ", D, enable, Q);
	   
	#2 reset = 1; enable = 0; D = 4'b0000;
	#5 reset = 0;
	
	#10  reset = 0; enable = 0; D = 4'b0000;
	#10  reset = 0; enable = 1; D = 4'b0001;
	#10  reset = 0; enable = 0; D = 4'b0010;
	#10  reset = 0; enable = 1; D = 4'b0011;
	#10  reset = 0; enable = 0; D = 4'b0100;
	#10  reset = 0; enable = 1; D = 4'b0101;
	#10  reset = 0; enable = 0; D = 4'b0110;
	#10  reset = 0; enable = 1; D = 4'b0111;
	#10  reset = 0; enable = 0; D = 4'b1000;
	#10  reset = 0; enable = 1; D = 4'b1001;
	#10  reset = 0; enable = 0; D = 4'b1010;
	#10  reset = 0; enable = 1; D = 4'b1011;
	#10  reset = 0; enable = 0; D = 4'b1100;
	#10  reset = 0; enable = 1; D = 4'b1101;
	#10  reset = 0; enable = 0; D = 4'b1110;
	#10  reset = 0; enable = 1; D = 4'b1111;
	
	
	#10 $display("");
 end
 
initial
#180 $finish; 

initial begin
    $dumpfile("Ejercicio1_tb.vcd");
    $dumpvars(0, Ejercicio1_tb);
end

endmodule 
	