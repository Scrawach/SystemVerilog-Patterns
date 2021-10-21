class DummyTransaction implements Transaction;
  rand bit[7:0] payload;
  
  function new(bit[7:0] payload);
    this.payload = payload;
  endfunction
  
  virtual function bit[7:0] getData();
    return payload;
  endfunction
endclass 
