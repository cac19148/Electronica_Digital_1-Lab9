module Ejercicio3_tb();

reg clk, enable, reset; 
reg J; reg K; wire Q; 

FlipFlopJK FFJK_1 (J, K , clk, reset, enable, Q);

initial begin
	clk=1;
	forever #5 clk = ~clk;  
end 

initial begin
	#1 $display("");
	$display("Ejercicio 3");
    $display(" J K ENABLE | Q ");
    $display("------------|--");
    $monitor(" %d %d    %d   | %d ", J, K, enable, Q);
	#2 reset = 1; enable = 0; J = 0; K = 0;
	#5 reset = 0;
	#10  reset = 0; enable = 1; J = 0; K = 0;
	#10  reset = 0; enable = 1; J = 0; K = 0;
	#10  reset = 0; enable = 1; J = 1; K = 0;
	#10  reset = 0; enable = 1; J = 1; K = 0;
	#10  reset = 0; enable = 1; J = 0; K = 1;
	#10  reset = 0; enable = 1; J = 0; K = 1;
	#10  reset = 0; enable = 1; J = 1; K = 1;
	#10  reset = 0; enable = 1; J = 1; K = 1;
	
	#10 $display("");
 end 
initial
#100 $finish; 
initial begin
    $dumpfile("Ejercicio3_tb.vcd");
    $dumpvars(0, Ejercicio3_tb);
end

endmodule 