class BadTransaction extends Transaction;
    local Transaction trans;
    
    function new(Transaction trans);
        super.new(trans.getData());
        this.trans = trans;
    endfunction
    
    virtual function bit[7:0] getData();
        bit[7:0] correct = trans.getData();
        correct[0] = ~correct[0];
        return correct;
    endfunction
endclass 
