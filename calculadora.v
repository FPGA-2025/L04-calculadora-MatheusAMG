module calculadora(
  input wire [7:0] entrada_A,
  input wire [7:0] entrada_B,
  input wire [2:0] codigo,
  output wire [7:0] saida
);

assign saida = (codigo == 3'b001) ? (entrada_A) :
               (codigo == 3'b010) ? (entrada_B) :
               (codigo == 3'b011) ? (entrada_A + entrada_B) :
               (codigo == 3'b100) ? (entrada_A - entrada_B) :
               8'b0;

endmodule
