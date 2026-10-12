module strings;
  string str1 = "ABCDEF";
  string str2 = "abcdef";

  initial begin // <--- Add this
    if(str1 == str2) begin
        $display("Both are equal");
    end
    // Note: icompare returns 0 if strings match (case-insensitive)
    else if (str1.icompare(str2) == 0) begin 
        $display("Both are equal 2");
    end
    else begin
        $display("Both are not equal");
    end
  end // <--- Add this
endmodule