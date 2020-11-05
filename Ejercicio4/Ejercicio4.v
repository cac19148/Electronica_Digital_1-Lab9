module BufferTriEstado1bit (input wire enable, input wire I, output  O); 
reg O; 
 
always @(enable or I) 
	begin 
      if (~enable) 
        O = I; 
      else 
        O = 1'bZ; 
    end 
endmodule 

module BufferTriEstado2bits (input  [1:0] enable, input  [1:0] I, output  O[1:0]); 

BufferTriEstado1bit BTE_1(enable[0], I[0], O[0]);
BufferTriEstado1bit BTE_2(enable[1], I[1], O[1]);

endmodule 

module BufferTriEstado4bits (input wire [3:0] enable, input wire [3:0] I, output wire O[3:0]); 

BufferTriEstado2bits BTE_1(enable[1:0], I[1:0], O[1:0]);
BufferTriEstado2bits BTE_2(enable[3:2], I[3:2], O[3:2]);

endmodule 