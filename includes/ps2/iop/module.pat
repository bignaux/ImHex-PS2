/*
    ImHex-PS2 iop::module
    Author : Ronan Bignaux
*/

#include <std/mem.pat>
#include <std/io.pat>
//#include <std/string.pat>
#include <ps2/type/module.pat>

#pragma once

// temporary since MAX_MODULES is 256 and we need non-recursive version
#pragma eval_depth 256

// Explicitly don't add these to the `ps2` namespace for usability
namespace iop::module {

    fn modinfo(smod_mod_info_t mod)
    {
        std::print("info {}", mod.name);
    };
 }

