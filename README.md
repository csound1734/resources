# resources
#csound #cabbage

### UDO usage:
`iN, Sfilepaths[] Resources ".ext"`

where:

* `iN` is the number of files ending in ".ext" found in ./resources/
* `Sfilepaths[]` is an array of `iN` strings, each of which necessarily begins with "resources/" and ends in ".ext"
* ".ext" is the file extension you are interested in

### Example:
```
 instr 1
Sext = p4 ;string p-field from score
iN, Swavs[] Resources ".wav"
icount = 0
continue:
if icount<iN then
printf_i "\n%s\n", 1, Swavs[icount]
igoto continue
endif
ichoose = int(random:i(0, iN))
a[] diskin2 Swavs[ichoose] ;this form allows audio files of any no. of chans
outs a[0], a[0] ;only play one channel in mono
 endin
 ```
