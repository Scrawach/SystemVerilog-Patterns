class RandomGenerator implements Generator;
  virtual function Transaction getTransaction();
    DummyTransaction trans = new(0);
    assert (trans.randomize()) else $error("%0t: [RANDOM GENERATOR] randomize failed!", $time);
    return trans;
  endfunction
endclass 
