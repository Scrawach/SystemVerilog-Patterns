class RandomGenerator implements Generator;
  virtual function Transaction getTransaction();
    RandomTransaction trans = new();
    assert (trans.randomize() ) else $error("%0t: [RANDOM GENERATOR] randomize failed!", $time);
    return trans;
  endfunction
endclass 
