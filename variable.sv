module moduleA (
	input clk,
	input rstn,
	input [3,0] in_a, // 여러 비트의 시그널 사용 [msb, lsb]
		// [0,3]으로 적을 수 없음 *주의*
	input [7,0] in_b,
	output [3,0] out_a,
	output [7,0] out_b,
) (
	//Code behavior
);
	
//(size)'(base)(number)
// base - b : binary, d : decimal, h : hexa
// 8'b1010_1101 -> _는 숫자 사이에 있을 때 무시


// Vector
wire	wire_1bit;
wire [7:0]	wire_8bit;

reg	reg_1bit;
reg [7:0] reg_8bit;

assign wire_1bit = 1'b0;
assign wire_8bit = 8'hFF;

always @* begin
	reg_1bit = 1'b1;
	reg_8bit = 8'hF0;
end

wire [7:0] = wire_8bit_2 = 'hF';

// Array
// demension을 가진 Vector
// [N-1:0]을 data type 뒤에 붙임 -> bit width = N (Vector)
// [M-1:0]을 변수 이름 뒤에 붙임 -> depth = M (Scalar)

reg [3:0] vector_a;
reg			scalar_a [3:0]; // depth = 4, each 1bit

reg [3:0] array_1D [7:0];
reg [3:0] array_2D [1:0][7:0];

always @* begin
	vector_a = 'h0;

	//scalar_a = 'h0 -> 안됨
	scalar_a[0] = 'h0;
	scalar_a[1] = 'h0;

	array_1D[0] = 'h0;
	array_2D[0][0] = 'h0;
end




endmodule