`wire` is used to connect components. its a net data type. 

nets to not store any value on their own. 

a variable in an abstraction of a storage element, and can hold values. probably something to do with the combinational logic nature of verilog

`reg` is an example that mimics a register

`integer` 32 bit wide.

`time` 64bits wide that can be used to store simulation times

`realtime` stores time as float.

`real` float

storage elements (memories) can be modelled using an array of regs. `reg [7:0] mem [256]`

`wire` and `tri` are functionally equivalent. they help designers convey meaning. wire nets are used for connections driven by a single source. tri nets are better for buses that may have multiple drivers. 

`trireg` is better for modelling charge storage elements like capacitors.

`uwire` can only have one driver, else compile time error.

`supply0` and `supply1` model power supplies.

modules can be used to seperate functionality to create more complex hardware. you could make a crc shift register with dff and some xors. 

top level modules are not instantiated inside any other modules.

ports are by default wires.

ports not connected will have high impedance.

inputs/inout cannot be reg. they are being driven from the outside.

assign <net> = [drive_strength][delay]<expression of different signals or constant value>

regs cannot be assigned. they are for storing data, not being driven continuously by signals.

always block is one of the procedural blocks in verilog. statements inside are executed sequentially. always block executed at some event, defined in sensitivity list.

    reg can be assigned to only in initial and always blocks
    wire can be assigned a value only via assign statement
    If there are multiple statements in an initial/always block, they should be wrapped in begin .. end


```
always @ (event)
	[statement]

always @ (event) begin
	[multiple statements]
end

// Execute always block whenever value of "a" or "b" change
always @ (a or b) begin
	[statements]
end

// Execute always block at positive edge of signal "clk", or when clk changes from 0 -> 1
always @ (posedge clk) begin
	[statements]
end

// always block is started at time 0 units
// But when is it supposed to be repeated ?
// There is no time control, and hence it will stay and
// be repeated at 0 time units only. This continues
// in a loop and simulation will hang !
// assign [LHS] = [RHS] // assign lhs whenever rhs changes
always clk = ~clk;

//should be
always #10 clk = ~clk;// Note: explicit delays are not synthesizeable.

```

an initial block is a procedural block that is not synthesizeable. used in testbenches.

a generate block allows you to instantiate multiple modules, without having to write each one out. it allows the design the be based on verilog parameters.

1. generate for loop: use `genvar` for variable in for loop
2. generate if else
3. generate case


questions:
* difference between <= and = in procedural block?


```verilog

wire [3:0] n0; // 4bit wire (vector)

reg [8*11:1] str = "Hello world!";

reg [7:0] address;

addr[0] = 1;
addr[6:0] = 7'b1010101;

//arrays
reg y1 [11:0]; // array of 1 bit regs
reg [7:0] y2 [9:0]; // array of 8bit regs
reg [7:0] y3 [9:0][5:0]; //2d array

reg [0] y1; // can you do this?

//linking ports by order. not as good as explicitly by name!
module mydesign ( input  x, y, z,     // x is at position 1, y at 2, x at 3 and
                  output o);          // o is at position 4

endmodule

module tb_top;
	wire [1:0]  a;
	wire        b, c;

	mydesign d0  (a[0], b, a[1], c);  // a[0] is at position 1 so it is automatically connected to x
	                                  // b is at position 2 so it is automatically connected to y
	                                  // a[1] is at position 3 so it is connected to z
	                                  // c is at position 4, and hence connection is with o
endmodule


// explicitly linking ports to names
module design_top;
	wire [1:0]  a;
	wire        b, c;

	mydesign d0  ( .x (a[0]),    // signal "x" in mydesign should be connected to "a[0]" in this module (design_top)
	               .y (b),       // signal "y" in mydesign should be connected to "b" in this module (design_top)
	               .z (a[1]),
	               .o (c));
endmodule

// This module takes four inputs and performs a boolean
// operation and assigns output to o. The combinational
// logic is realized using assign statement.

module combo (	input 	a, b, c, d,
								output  o);

  assign o = ~((a & b) | c ^ d);

endmodule

// Because there are 5 inputs, there can be 32 different input combinations
    // So use an iterator "i" to increment from 0 to 32 and assign the value
    // to testbench variables so that it drives the design inputs
// for (i = 0; i < 32; i = i + 1) begin
//     {a, b, c, d, e} = i;
//     #10;
// end

module ha ( input 	a, b,
						output	sum, cout);

	assign sum  = a ^ b;
	assign cout = a & b;
endmodule

module fa (	input 	a, b, cin,
						output 	sum, cout);

	assign sum  = (a ^ b) ^ cin;
	assign cout = (a & b) | ((a ^ b) & cin);
endmodule

module mux_2x1 (input 	a, b, sel,
								output 	c);

	assign c = sel ? a : b;
endmodule

module demux_1x4 (	input 				f,
										input [1:0]	 	sel,
										output 				a, b, c, d);

	assign a = f & ~sel[1] & ~sel[0];
	assign b = f &  sel[1] & ~sel[0];
	assign c = f & ~sel[1] &  sel[0];
	assign d = f &  sel[1] &  sel[0];

endmodule

// concatentation {}
// assign res1 = {b, a, c[1:0], 2'b00, c[2]};

//replication {n{}}
//assign res = {7{a}};

//nested replication
//$display("a=%b b=%b res=%b", a, b, {a, b, 3'b000, {{2{a}}, {3{b}}}});

```
