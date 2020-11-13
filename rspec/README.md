# RSpec

rspec is the testing framework that was used to test trace2.
To use it in a real-world example, it will be run with an
old version of trace2.

## How to run it

First, you should have cloned the trace2 repository to your machine.
After that, go to it's directory and:

```bash
git checkout a159988
```

After that:

```bash
rspec
```

As of now, trace2's extension can't handle more than one instance of
the default event processor, the class that registers how classes interact.
Due to that, only the integration test that doesn't use it should be
run. To do that:

```bash
trace2 -o integration_run --format png rspec spec/trace2/event_processor_integration_spec.rb
```

That creates a pdf file will all the classes that were called,
including trace2 and rspec classes. To make the analysis of how
trace2 classes interact easier, a filter could be applied to
remove the RSpec classes. To do that:

```bash
trace2 -o trace2_classes --format png --filter ../trace2-examples/rspec/only_trace2.yml rspec spec/trace2/event_processor_integration_spec.rb
```

That still creates a graph with all classes that are not part of the Trace2
module, but are it's callers or callees.
