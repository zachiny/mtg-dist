# mtg-dist
Binary dist script for mtg ( https://github.com/9seconds/mtg ).

## Note

Update: mtg 1.0+ support MTProto2.0, this script will choose the FakeTLS mode to serve by default. Re-run the install script to upgrade to the latest version. By upgrading to MTProto2.0, the `secret` would starts with `ee`, please be noticed.

# Install
It is only three steps to install mtg.
First:
```
git clone https://github.com/kushiny/mtg-dist.git
```
or
```
git clone git@github.com:kushiny/mtg-dist.git
```
Second:
```
cd mtg-dist
```
Third:
```
sh install.sh
```

# Uninstall
```
systemctl stop mtg && systemctl disable mtg 
rm -f /usr/local/bin/mtg /lib/systemd/system/mtg.service /etc/mtg.toml    
```

# Compile
The binary `bin/mtg` is directly compile from mtg repo. It's for `linux/amd64` only.

`./makebin.sh` builds self-extract script using `makeself`.
