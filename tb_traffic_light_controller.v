`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2025 06:30:05 PM
// Design Name: 
// Module Name: tb_traffic_light_controller
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


module tb_traffic_light_controller( );
reg clk,reset;
wire Red,Green,Yellow;
traffic_light_controller uut (.Red(Red),.Green(Green),.Yellow(Yellow),.clk(clk),.reset(reset));

initial begin 
    clk = 0;
    forever #5 clk = ~clk ; 
    end
    
initial begin
    reset = 1;
    #10
    reset = 0;
    $display("Reset de-asserted at time %0t", $time);
    #100;
     $finish;
    end    
    
initial begin
        $monitor("Time = %0t | Reset = %b | Red = %b | Green = %b | Yellow = %b", 
                  $time, reset, Red, Green, Yellow);
    end
    
endmodule
