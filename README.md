# bashlets-util

Utility package for the [bashlets](https://github.com/reale/bashlets) project.

Specifically, this package contains the following modules:

* `bashlets.util.datatype`: Additional data types for bashlets
* `bashlets.util.filetype`: Filetype utilities
* `bashlets.util.random`: Generate random data through various methods
* `bashlets.util.time`: Time-management utilities

## Installing

First install the bashlets [core distribution](https://github.com/reale/bashlets).

Then it is enough to do:

	$ bashlets-install util

## Examples

### Check IBAN format

    $ source bashlets util::datatype::iban
    $ bash$$ iban validate GB29 NWBK 6016 1331 9268 19 && echo VALID

    VALID

### Convert IP from decimal to binary format


    $ source bashlets util::datatype::ip
    $ bash$$ ip dec2bin 192.168.0.1

    11000000.10101000.00000000.00000001
