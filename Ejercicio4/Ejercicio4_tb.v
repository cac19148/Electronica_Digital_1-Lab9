module Ejercicio4_tb();


reg [3:0]enable, I;
wire [3:0]O; 

BufferTriEstado4bits BTE4b (enable, I, Q);

initial begin

	#1 $display("");
	$display("Ejercicio 4");
    $display(" I ENABLE | O ");
    $display("---------|--");
    $monitor(" %d   %d    | %d ", I, enable, O);
	   
	#9   I = 4'b1010; enable = 4'b0100; O = 4'b0000;
	#10  I = 4'b1010; enable = 4'b0010; O = 4'b0000;
	#10  I = 4'b1010; enable = 4'b1000; O = 4'b0000;
	#10  I = 4'b1010; enable = 4'b0001; O = 4'b0000;
	
	#10 $display("");
 end
 
initial
#40 $finish; 

initial begin
    $dumpfile("Ejercicio4_tb.vcd");
    $dumpvars(0, Ejercicio4_tb);
end

endmodule 
	