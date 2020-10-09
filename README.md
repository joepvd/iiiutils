# iiiutils
Some utils for convenient desktop computing

## note: Script to have a notes app ready in i3wm

It will:
- start the notes app if there is no window with the "notes" mark available
- send the notes app to scratchpad if it is currently focused
- bring notes app to current workspace and focus in other cases

### Usage:
```console
$ note
```

### Installation
Copy or symlink `note` to your `$PATH`.

Set the following in your i3 config file:
```
bindsym F4 exec --no-startup-id note
```

### Configuration
Configure by setting `NOTES_MARK` and `NOTES_CMD` in the script

## summon-slack: Summon the slack app

It will:
- start slack if it is off
- if it is focused, send the app to workspace `inbox`
- bring slack to current workspace and focus in other cases

### Usage
```console
$ summon-slack
```

### Installation
Copy or symlink `summon-slack` into `$PATH`.

Set the following in your i3 config file:
```
bindsym F10 exec --no-startup-id summon-slack
```

## killws
Kill all windows on the currently focused workspace. With exceptions, as hard
coded for now.

Bind as `MOD`+`SHIFT`+`Backspace`:
```
bindsym $mod+Shift+BackSpace exec killws
```
