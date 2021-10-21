interface class Transaction;
  pure virtual function bit[7:0] getData();
  pure virtual function Transaction clone();
endclass
