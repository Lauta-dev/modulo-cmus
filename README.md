```ini
######################
##    MODULE.INI    ##
######################

[module/CMUS]
type = custom/script
exec = ~/script/CMUS/cmus.sh
interval = 1

click-left = cmus-remote -n
click-right = cmus-remote -r

scroll-up = cmus-remote --volume +5%
scroll-down = cmus-remote --volume -5%
```

```ini
######################
##    CONFIG.INI    ##
######################

modules-center = CMUS
```
