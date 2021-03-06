# Script

This directory contains two classes that are used to make simple Ruby script
which prints seemingly random numbers on the console. The `Randomizer` class
is responsible for generating the seemingly random number, while the `Runner`
instantiates the `Randomizer` class and uses it to generate the numbers
that should be printed.

## How to run it

To run the script:

```
ruby app/script.rb
```

The results on this repository were generated
by running:

By running trace2 without a filter file:
```
trace2 -o vanilla_trace2 --format png app/script.rb
```

Which outputs vanilla_trace2.png and vanilla_trace2,
a .dot representation of the dependency between classes.

By running trace2 with a filter that removes files that
are not on the current path:

```
trace2 -o no_trace2 --format png --filter remove_trace2.yml app/script.rb
```

Notice that `Trace2::ExecutableRunner` still appears on no_trace2.png. That is
due to the `Runner` having `Trace2::ExecutableRunner`as its dependency.
