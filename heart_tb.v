`timescale 1ns / 1ps

module heart_tb;


    reg clk;
    reg reset;
    reg love;
    reg tranquillity;


    wire [1:0] heart;
    wire life;

 
    my_heart h(
        .clk(clk),
        .reset(reset),
        .love(love),
        .tranquillity(tranquillity),
        .heart(heart),
        .life(life)
    );

    initial clk = 0;
    always #5 clk = ~clk; 

  initial begin
        $dumpfile("heart.vcd");            
        $dumpvars(0, heart_tb);       
    end

    initial begin
        reset = 1;
        love = 0;
        tranquillity = 0;

        #10; 
        reset = 0; love = 1; 

        #20; 

        tranquillity = 1; 
        #20;

        tranquillity = 0; 
        #10;

        reset = 1;
        #10;
        reset = 0;

        #20;

        $stop;
    end

endmodule
