class BadTransaction implements Data;
    local Data trans;
    
    function new(Data trans);
        this.trans = trans;
    endfunction
    
    virtual function bit[7:0] getData();
        bit[7:0] correct = trans.getData();
        correct[0] = ~correct[0];
        return correct;
    endfunction
endclass 
