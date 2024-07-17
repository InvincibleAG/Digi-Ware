module shift (clk, val, en,out); 
    input clk;
    input [3:0] val; 
    input en;	
    output reg [3:0] out;
	always @ (posedge clk) begin
	    	if (en) begin
	      	out <= val;
	      end 
          else begin
            for (integer i = 0; i < 4; i=i+1) begin
              out[i+1] <= out[i];
            end
            out[0] <= out[3];
	      end
	  end
endmodule