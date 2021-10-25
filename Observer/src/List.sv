class List#(type T = int);
    local T array[];

    function new();
        array = new[0];
    endfunction : new

    // Return element by index
    function T at(int index);
        return array[index];
    endfunction : at

    // Return number of elements in array
    function int count();
        return array.size;
    endfunction : count

    // Add item in array
    function add(T item);
        T temp[] = new[array.size + 1];

        for (int i = 0; i < array.size; i++) temp[i] = array[i];

        temp[array.size] = item;
        array = temp;
    endfunction : add

    // Remove first equal element
    function remove(T item);
        bit first_been_removed;
        T temp[] = new[array.size - 1];

        if (!contains(item)) begin
            return 0;
        end

        first_been_removed = 0;
        for (int i = 0, j = 0; i < array.size; i++) begin
            if (item == array[i] && !first_been_removed) begin
                first_been_removed = 1;
                continue;
            end

            temp[j] = array[i];
            j++;
        end

        array = temp;
    endfunction : remove

    // Return 1 if this item exist in array
    function bit contains(T item);
        foreach (array[i]) if (array[i] == item) return 1;
        return 0;
    endfunction : contains
endclass : List
