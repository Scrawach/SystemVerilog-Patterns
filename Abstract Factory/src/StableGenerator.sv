class StableGenerator implements Generator;
  local Transaction blueprint;
  
  function new(Transaction blueprint);
    this.blueprint = blueprint;
  endfunction

  virtual function Transaction getTransaction();
    return blueprint;
  endfunction
endclass 
