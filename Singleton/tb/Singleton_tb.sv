module Singleton_tb;

  initial begin
    Singleton::getInstance().doSomething();
  end
  
endmodule
