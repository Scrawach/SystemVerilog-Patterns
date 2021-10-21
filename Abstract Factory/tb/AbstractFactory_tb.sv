module AbstractFactory_tb;
    
    initial begin
        DummyTransaction trans = new();
        StableGenerator stableGen = new(trans);
        RandomGenerator randomGen = new();
        Transaction example;
        
        example = getTransaction(stableGen);
        $display(example.getData());
        
        example = getTransaction(randomGen);
        $display(example.getData());
        
        example = getTransaction(randomGen);
        $display(example.getData());
        
        example = getTransaction(randomGen);
        $display(example.getData());
    end
    
    function Transaction getTransaction(Generator gen);
        return gen.getTransaction();
    endfunction
    
endmodule
