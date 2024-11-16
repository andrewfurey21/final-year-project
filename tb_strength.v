module tb;

    // Declare nets with different strengths
    reg a, b, c, d;

    wire strong0_net, strong1_net;
    wire pull0_net, pull1_net;
    wire weak0_net, weak1_net;
    wire highz0_net, highz1_net;

    // Assign strong drivers
    assign (strong1, weak0) strong1_net = a; // Strongly drives high if 'a' is 1
    assign (weak1, strong0) strong0_net = b; // Strongly drives low if 'b' is 0

    // Assign pull drivers
    assign (pull1, pull0) pull1_net = c; // Pulls up to 1 unless driven low
    assign (pull0, pull1) pull0_net = d; // Pulls down to 0 unless driven high

    // Assign weak drivers
    assign (weak1, weak0) weak1_net = a; // Weakly drives high if 'a' is 1
    assign (weak0, weak1) weak0_net = b; // Weakly drives low if 'b' is 0

    // Assign high impedance drivers
    assign (highz1, pull0) highz1_net = a; // High impedance when not driven
    assign (highz0, pull1) highz0_net = b; // High impedance when not driven

    initial begin
      reg [1:0] values = {1'b1, 1'b0};

      repeat (10) begin
        integer idx;

        #10;
        idx = $random % 2;
        a = values[idx];
        idx = $random % 2;
        b = values[idx];
        idx = $random % 2;
        c = values[idx];
        idx = $random % 2;
        d = values[idx];
      end
    end

    initial
      $monitor("[%0t] a=%0b b=%0b c=%0b d=%0b strong1=%0b strong0=%0b pull1=%0b pull0=%0b weak1=%0b weak0=%0b highz1=%0b highz0=%0b", $time, a, b, c, d, strong1_net, strong0_net, pull1_net, pull0_net, weak1_net, weak0_net, highz1_net, highz0_net);

endmodule
