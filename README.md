This repository contains a [conda][conda] recipe for building
[pd2_ca2main][pd2], a tool for predicting protein secondary structure
given a sequence profile.

## Prerequisites

1. You will need an installation of [conda][miniconda].

2. Your root conda installation must have the `conda-build` installed.

## Building

You should be able to build this package by simply running `conda build .`.

The data files for `pd2_ca2main` will be installed into
`$PREFIX/share/pd2_ca2main/database`. Scripts will be installed into
`$PREFIX/conda/activate.d` and `$PREFIX/conda/deactivate.d` that set and unset
the `$PRODART_DATABASE_PATH` environment variable automatically when the conda
environment is `source`d.

## Patches

This recipe contains the following patches:

* `scons.patch`
    Play nicely with `conda build` by passing various environment variables
    through to SCons.

* `tuple.patch`
    Explicitly reference `boost::tuple` rather than using the ambiguous
    `tuple`, which clashes with C++11's `std::tuple`.

[conda]: https://conda.io
[pd2]: http://www.sbg.bio.ic.ac.uk/~phyre2/PD2_ca2main/
[miniconda]: https://conda.io/miniconda.html
