When running a shell script via the `./script` command, it executes script
on a separate shell. Therefore, when performing cd, the shell subprocess
is the one moving to the directory and not the parent.

Try the following:
```
  $ ./script.sh # the script should print that it has successfully changed its location
  $ pwd # however, the pwd command tells us that we have not
        # this is because only the subproccess moved
        # in order for the current shell to move we use:
  $ . script.sh # the dot command tells the interpreter to use the current shell
                # and not to spawn a subprocess
                # this way, we will also change directories whenver script.sh does
                # take note there is a space between the dot and the filename
```

Try to research on other commands that will not normally work when using `./`
