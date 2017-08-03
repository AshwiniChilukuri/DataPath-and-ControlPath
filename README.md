# DataPath-and-ControlPath
Written a verilog code to transfer data from a 3 bit RAM to 2 bit RAM
Memory to memory transfer between 8 bit wide 8 entries deep memory - MemoryA to 8 bit wide 4 entries deep memory-MemoryB
Controller first populates MemoryA then the data is read out sequentially and compared in pairs(X,Y). If sign of comparision is positive X+Y is stored in MemoryB else X-Y is stored in Memory B.

