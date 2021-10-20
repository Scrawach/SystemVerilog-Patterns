module Decorator_tb;

    initial begin
        Transaction trans = new(170);
        BadTransaction badTrans = new(trans);
        BadTransaction notSoBadTrans = new(badTrans);
        
        show(trans);         // display 170
        show(badTrans);      // display 171
        show(notSoBadTrans); // display 170
    end
    
    function void show(Transaction trans);
        $display(trans.getData());
    endfunction

endmodule
