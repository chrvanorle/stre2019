# stre2019
Software Testing and Reverse Engineering 2019

Requirements:
- git installed
- Java 8 JDK installed and set as default
- Java 7 JRE (set path to this later, int data.config)

The scripts assume you are working from the home directory `cd ~`.

1. Clone this repository and cd into it.
1. Update data.config with your settings.

To run the experiment, do the following:
```
./init
./defects4jcompile.sh
./astorscript.sh
```

`Init.sh` will get required packages and setup astor and defects4j.
`defects4jcompile.sh` will checkout and test-compile the bugs
`astorscript.sh` will execture the repair methods on the bugs.

If everything goes well, the results can be found in ~/stre2019/output-astor