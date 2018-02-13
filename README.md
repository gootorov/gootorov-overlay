Gootorov overlay
===========

My Gentoo ebuild repository. Here you can find packages that are not available in the official Portage tree.

## Installation

Create a configuration file `/etc/portage/repos.conf/gootorov.conf` with the following contents:

```Sh
[gootorov]
priority = 50
location = /usr/local/overlays/gootorov-overlay
sync-type = git
sync-uri = https://github.com/gootorov/gootorov-overlay.git
auto-sync = Yes
```

Sync the Portage tree:
```Sh
# emerge --sync
```

## Usage

To install a package execute the following:

```Sh
# emerge category/package::gootorov
```
