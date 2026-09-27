[comment]: <> (SPDX-License-Identifier: AGPL-3.0)

[comment]: <> (-------------------------------------------------------------)
[comment]: <> (Copyright © 2024, 2025  Pellegrino Prevete)
[comment]: <> (All rights reserved)
[comment]: <> (-------------------------------------------------------------)

[comment]: <> (This program is free software: you can redistribute)
[comment]: <> (it and/or modify it under the terms of the GNU Affero)
[comment]: <> (General Public License as published by the Free)
[comment]: <> (Software Foundation, either version 3 of the License.)

[comment]: <> (This program is distributed in the hope that it will be useful,)
[comment]: <> (but WITHOUT ANY WARRANTY; without even the implied warranty of)
[comment]: <> (MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the)
[comment]: <> (GNU Affero General Public License for more details.)

[comment]: <> (You should have received a copy of the GNU Affero General Public)
[comment]: <> (License along with this program.)
[comment]: <> (If not, see <https://www.gnu.org/licenses/>.)


# Android Input Utils

A collection of input utilities for Android.

- `key2keyevent`:

  Returns Android keyevent code for a given key.
  Very handy for looking at keyevents.

- `orthonormal-coordinates`:

  A command to convert coordinates, useful
  for sending swipes.

- `keyboard-show`:

  Shows the virtual keyboard.
  This command exists because I was tired
  of remembering about `button_start`.


## Installation

The programs in this source repo
can be installed from source using GNU Make.

```bash
make \
  install
```

This collection has officially published on the
the uncensorable
[Ur](
  https://github.com/themartiancompany/ur)
user repository and application store as
`android-input-utils`.
The source code is published on the
[Ethereum Virtual Machine File System](
  https://github.com/themartiancompany/evmfs)
so it can't possibly be taken down.

To install it from there just type

```bash
ur \
  android-input-utils
```

A censorable HTTP Github mirror of the recipe published there,
containing a full list of the software dependencies needed to run the
tools is hosted on
[android-input-utils-ur](
  https://github.com/themartiancompany/android-input-utils-ur).

A censorable binary package has been published on the
[Fallback User Repository](
  https://github.com/themartiancompany/fur)
and it can be installed with

```bash
fur \
  android-input-utils
```

Be aware the mirrors could go offline any time as Github and more
in general all HTTP resources are inherently unstable and censorable.

## Documentation

Help for all the commands can be displayed by invoking
them with the `-h` option.

Manuals can be consulted using the

```bash
  man \
    <program-name>
```
command.

Manuals in ReSTructured format
are in the `man` submodule in
this directory, pointing to the
[`android-input-utils-man`](
  https://github.com/themartiancompany/android-input-utils-man)
repository.

## License

This program is released by Pellegrino Prevete under the terms
of the GNU Affero General Public License version 3.

