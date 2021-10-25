class List#(type TValue = int);
    local TValue array[];

    function new();
        array = new[0];
    endfunction : new

    // Return element by index
    function TValue at(int index);
        return array[index];
    endfunction : at

    // Return number of elements in array
    function int count();
        return array.size;
    endfunction : count

    // Add item in array
    function add(TValue item);
        TValue temp[] = new[array.size + 1];

        for (int i = 0; i < array.size; i++) temp[i] = array[i];

        temp[array.size] = item;
        array = temp;
    endfunction : add

    // Remove first equal element
    function remove(TValue item);
        bit first_been_removed;
        TValue temp[] = new[array.size - 1];

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
    function bit contains(TValue item);
        foreach (array[i]) if (array[i] == item) return 1;
        return 0;
    endfunction : contains
endclass : List
