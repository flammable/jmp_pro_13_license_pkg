# jmp_pro_13_license_pkg

### What is this?

You can use these files to deploy a JMP Pro 13.0+ license.

### Requirements

* [The Luggage](https://github.com/unixorn/luggage)
* JMP 13.0 (or higher)
* A valid JMP Pro 13 license
* [Munki](https://github.com/munki/munki) (optional)

### How do I use this?

1. Install The Luggage.
2. Install JMP Pro 13 manually on a Mac.
3. Copy `~/Library/Application Support/JMP.per` to the `jmp_pro_13_license_pkg` folder.
4. `cd` into this folder, then `make dmg`, `make pkg`, or `make munkiimport`.

### Credits

* The JMP Team at SAS
* [@sheagcraig](https://github.com/sheagcraig)