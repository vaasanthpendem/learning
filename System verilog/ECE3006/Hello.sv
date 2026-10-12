module testbench;
  logic [3:0] count;

  initial begin
    // These two lines are REQUIRED to see waves in GTKWave
    $dumpfile("waves.vcd"); 
    $dumpvars(0, testbench);

    count = 0;
    $display("Starting simulation...");
    
    repeat (5) begin
      #10 count = count + 1;
      $display("Time=%0t | count=%d", $time, count);
    end

    $display("Simulation finished!");
    $finish;
  end
endmodule