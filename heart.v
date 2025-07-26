module my_heart (
    input clk,
    input reset,
    input pain,
    input love,
    input tranquillity,
    output reg [1:0] heart,
    output life
);

always @ (posedge clk or posedge reset)
begin
  if (reset)
    heart <= 2'b00;
  else 
    heart <= heart +1;
end
assign life = (tranquillity) ? 1'b0 : (love && clk);
endmodule 