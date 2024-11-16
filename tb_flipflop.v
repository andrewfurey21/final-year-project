module tb_flipflop;

	reg tb_clk;
	reg tb_d;
	reg tb_rstn;

	reg tb_q;

	flipflop ff0 (.clk (tb_clk),
		      .d   (tb_d),
		      .rstn(tb_rstn),
		      .q   (tb_q));

	initial begin
		tb_rstn <= 1'b0;
		tb_clk <= 1'b0;
		tb_d <= 1'b0;
	end
endmodule;
