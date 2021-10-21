class RandomGenerator implements Generator;
  virtual function Transaction getTransaction();
    DummyTransaction trans = new();
    assert (trans.randomize() ) else $error("%0t: [RANDOM GENERATOR] randomize failed!", $time);
    return trans;
  endfunction
endclass 
