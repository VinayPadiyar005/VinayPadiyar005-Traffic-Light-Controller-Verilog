`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2025 03:58:00 PM
// Design Name: 
// Module Name: traffic_light_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module traffic_light_controller(Red,Green,Yellow,clk,reset);
input clk , reset;
output reg Red , Green , Yellow;

parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
reg [1:0]state;


always@(posedge clk , posedge reset) begin
if(reset)
    state <= s0;
else begin
    case(state)
        s0: state <= s1;
        s1: state <= s2;
        s2: state <= s0;   
        default: state <= s0;
     endcase
    end  
    
end
always@(*)begin
Red = 0 ; Green = 0; Yellow = 0;
case(state)
    s0: Red = 1;
    s1: Green = 1;
    s2: Yellow = 1;
    endcase
end    
endmodule
