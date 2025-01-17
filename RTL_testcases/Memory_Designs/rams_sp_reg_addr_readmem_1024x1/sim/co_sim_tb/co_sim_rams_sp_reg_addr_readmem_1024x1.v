module co_sim_rams_sp_reg_addr_readmem_1024x1;
    reg clk;
    reg we;
    reg [9:0] addr;
    reg [0:0] di;
    wire [0:0] dout, dout_net;

    integer mismatch=0;
    reg [6:0]cycle, i;

    rams_sp_reg_addr_readmem_1024x1 golden(.*);
    rams_sp_reg_addr_readmem_1024x1_post_synth netlist(.*, .dout(dout_net));


    always #10 clk = ~clk;
    // initial begin
    //     for(integer i = 0; i<1024; i=i+1) begin 
    //         golden.RAM[i] ='b0;
    //     end 
    // end
    initial begin
    {clk, we, addr ,di, cycle, i} = 0;

    for (integer i=0; i<1024; i=i+1)begin
        repeat (1) @ (posedge clk)
        addr <= i; we <=0;
        cycle = cycle +1;
      
        compare(cycle);
        $display("Initial Values: memory read dout=%h  netlist dout=%h address=%d", golden.dout, dout_net, i);
    end

    if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nERROR: SIM: Simulation Failed", mismatch);
    

    repeat (10) @(posedge clk); $finish;
    end

    task compare(input integer cycle);
    //$display("\n Comparison at cycle %0d", cycle);
    if(dout !== dout_net) begin
        $display("dout mismatch. Golden: %0h, Netlist: %0h, Time: %0t", dout, dout_net,$time);
        mismatch = mismatch+1;
    end
    
    endtask


    initial begin
        $dumpfile("tb.vcd");
        $dumpvars;
    end
endmodule