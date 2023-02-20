#pragma once

#include <std/io.pat>
#include <std/core.pat>

/*

struct ListEntry<T> {
  u32 address;
  
  if (address == 0x00)
    break;
  else
    T value @ address;
};

ListEntry<YourType> list[while(true)] @ 0x00;
*/

namespace type {

    struct smod_mod_info_t
    {
        u32 address;  
        /*
      if (address == 0x00)
        break;
      else
        smod_mod_info_t next @ address;
        */
        
        char *name[] : u32;
        u16 version;
        u16 newflags; /* For modload shipped with games.  */
        u16 id;
        u16 flags; /* I believe this is where flags are kept for BIOS versions.  */
        u32 entry; /* _start */
        u32 gp;
        u32 text_start;
        u32 text_size;
        u32 data_size;
        u32 bss_size;
        u32 unused1;
        u32 unused2;
    };
}