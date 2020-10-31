module Ejercicio2_tb();

reg clk, enable, reset; 
wire Q; 

FLipFlopT1bit FFT_1 (clk, reset, enable, Q);

initial 
	begin
		clk=1;
		forever #5 clk = ~clk; 
	end 


initial begin

	#1 $display("");
	$display("Ejercicio 2");
    $display("ENABLE | Q ");
    $display("-------|--");
    $monitor("%d     | %d ", enable, Q);
	   
	#2 reset = 1; enable = 0; 
	#5 reset = 0;
	#10  reset = 0; enable = 0; 
	#10  reset = 0; enable = 1; 
	#10  reset = 0; enable = 1; 
	#10  reset = 0; enable = 0;
	#10  reset = 0; enable = 1; 
	#10  reset = 0; enable = 1; 
	#10  reset = 0; enable = 0; 
	#10  reset = 0; enable = 1; 
	#10  reset = 0; enable = 1; 
	
	
	
	#10 $display("");
 end

initial
#100 $finish; 

initial begin
    $dumpfile("Ejercicio2_tb.vcd");
    $dumpvars(0, Ejercicio2_tb);
end

endmodule 