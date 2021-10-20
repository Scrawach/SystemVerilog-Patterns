class Transaction implements Data;
    local bit[7:0] data;
    
    function new(bit[7:0] data);
        this.data = data;
    endfunction
    
    virtual function bit[7:0] getData();
        return data;
    endfunction
endclass
