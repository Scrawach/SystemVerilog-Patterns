class DummyTransaction implements Transaction;
  rand bit[7:0] payload;
  
  virtual function bit[7:0] getData();
    return payload;
  endfunction
endclass 
