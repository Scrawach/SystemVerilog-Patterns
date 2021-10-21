class HighTransaction implements Transaction;
  local bit [3:0] payload;
  
  function new(bit[3:0] payload);
    this.payload = payload;
  endfunction
  
  virtual function bit[7:0] getData();
    bit [7:0] result;
    result[7:4] = payload;
    return result;
  endfunction
endclass 
