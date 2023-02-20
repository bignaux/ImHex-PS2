
A placeholder for Playstation 2 [ImHex](https://github.com/WerWolv/ImHex) stuff.

## Installing

    git clone https://github.com/bignaux/ImHex-PS2
    cd ImHex-PS2
    ln -s `pwd`/includes/ps2 ~/.local/share/imhex/includes/


## Test

dump IOP memory then copy follow snippet in the pattern editor


    #include <ps2/iop/module.pat>
    iop::module::smod_mod_info_t head @ 0x800;
    iop::module::modinfo(head);
    
    
        fn modwalk(smod_mod_info_t mod) {
        modinfo(mod)
        if(mod.next)
        {            
            modwalk(mod.next);
        }
    };

## See also

* [ghidra-emotionengine-reloaded](https://github.com/chaoticgd/ghidra-emotionengine-reloaded)
* [lwNBD memory plugin documentation](https://github.com/bignaux/lwNBD/blob/main/plugins/memory/lwnbd-memory-plugin.md)