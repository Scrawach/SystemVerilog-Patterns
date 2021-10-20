module Decorator_tb;

    initial begin
        Transaction trans = new(170);
        BadTransaction badTrans = new(trans);
        
        show(trans);    // display 170
        show(badTrans); // display 171
    end
    
    function void show(Transaction trans);
        $display(trans.getData());
    endfunction

endmodule
