class Singleton;
  local static Singleton singleton;

  local function new(); endfunction

  static function Singleton getInstance();
    if (singleton == null) begin
      singleton = new();
    end
    return singleton;
  endfunction

  function void doSomething();
    $display("DOING");
  endfunction
  
endclass : Singleton
