# Building GNU Hello

This directory shows three different ways to package [GNU Hello][],
each more succinct than the previous.

```shell
nix-build gnu-hello1.nix
result/bin/hello

nix-build gnu-hello2.nix
result/bin/hello

nix-build gnu-hello3.nix
result/bin/hello
```

[GNU Hello]: https://www.gnu.org/software/hello/
