# Connecting Bash to Nix tutorial source

This is the companion repository to Ross Light's
[Connecting Bash to Nix tutorial](https://www.zombiezen.com/blog/2023/03/connecting-bash-to-nix/).
See the READMEs in each directory if you just want to run the code.

Once you're done, you can run the following to reclaim disk space:

```shell
rm -f part[123]/result &&
nix-store --gc
```

This repository is archived because I do not accept contributions:
the code is tied to the blog post.
You wouldn't download a car; you wouldn't rewrite a blog post.

## License

[Unlicense](LICENSE)
