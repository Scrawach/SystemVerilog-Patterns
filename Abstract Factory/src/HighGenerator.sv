class HighGenerator implements Generator;
  virtual function Transaction getTransaction();
    int   value = $urandom_range(0, 16);
    HighTransaction blueprint = new(value);
    return blueprint;
  endfunction
endclass 
