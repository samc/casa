<h1 align="center" style="border-bottom: none;">🏠 Casa</h1>
<h3 align="center">Reproducible set of dotfiles and packages for Linux and macOS/h3>
<p align="center">
  <a href="#badge">
    <img alt="semantic-release" src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg">
  </a>
</p>

---

This is the setup I use on all my machines. The installation process is very
simple and allows me to get up and running on any new machine in a matter of
seconds. The following is run on a pristine Ubuntu machine with `curl`
available:

``` shell
$ # install from the latest master
$ nix-env -if https://github.com/samcraigdev/casa/tarball/master --remove-all
$ # make sure that the .bashrc is sourced
$ echo 'if [ -x "$(command -v bashrc)" ]; then $(bashrc); fi' >> ~/.bashrc
```

***Casa*** will be available in all subsequent shells, including the
customizations (vim with my favorite plugins, tmux with my customized
configuration, etc).

## How-To

Trying out the package set:

``` shell
$ nix-shell --pure
```

Installing the package set:

``` shell
$ nix-env -f default.nix -i --remove-all
```

Listing the currently installed packages:

``` shell
$ nix-env -q
```

Listing the previous and current configurations:

``` shell
$ nix-env --list-generations
```

Rolling back to the previous configuration:

``` shell
$ nix-env --rollback
```

Deleting old configurations:

``` shell
$ nix-env --delete-generations [3 4 9 | old | 30d]
```
