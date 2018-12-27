# FMM (Factorio Mod Manager)

## Design Goals:
* Simple
* Lightweight
* Flexible

## Options

    fmm -l # list installed mods
    fmm -i # install mod from file
    fmm -d # download mod from the Factorio website

## Examples

To list all mods

    fmm -l all

To list all active mods

    fmm -l active

To install a mod from your home directory

    fmm -i ~/my_mod.zip

To install a modpack from your home directory and set it as active

    fmm -i --active ~/my_modpack.zip

To download a mod from the Factorio website, but leave it disabled

    fmm -d "My Mod" --disabled

To download a mod from a third-party website and install it

    fmm -d https://factoriomods.net/download/a_cool_mod.zip
    
*Note: this software is still in development, so the usage is subject to frequent change.*