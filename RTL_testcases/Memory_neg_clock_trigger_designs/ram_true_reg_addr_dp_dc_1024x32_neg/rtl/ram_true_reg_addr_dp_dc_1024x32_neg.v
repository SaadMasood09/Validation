module ram_true_reg_addr_dp_dc_1024x32_neg (clkA, clkB, weA, weB, addrA, addrB, dinA, dinB, doutA, doutB);
    input clkA, clkB, weA, weB;
    input [9:0] addrA, addrB;
    input [31:0] dinA, dinB;
    output [31:0] doutA, doutB;
    
    reg [9:0] reg_addrA, reg_addrB;
    reg [31:0] ram [1023:0];
    always @(negedge clkA)
    begin
        reg_addrA <= addrA;
        if (weA)
            ram[addrA] <= dinA;
    end


    always @(negedge clkB)
    begin
        reg_addrB <= addrB;
        if (weB)
            ram[addrB] <= dinB;
    end
        

    assign doutA = ram[reg_addrA];
    assign doutB = ram[reg_addrB];

endmodule