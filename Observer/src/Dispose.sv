class Dispose;
    local list #(observer) observers;
    local observer obs;

    function new(list #(observer) observers, observer obs);
        this.observers = observers;
        this.obs = obs;
    endfunction : new

    function clear();
        if (obs != null && observers.contains(obs)) begin
            observers.remove(obs);
        end
    endfunction : dispose

endclass : Dispose
