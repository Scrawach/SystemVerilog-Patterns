class Transaction;
    local bit[7:0] data;
    
    function new(bit[7:0] data2);
        this.data = data2;
    endfunction
    
    virtual function bit[7:0] getData();
        return data;
    endfunction
endclass
