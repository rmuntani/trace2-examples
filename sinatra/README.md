# Sinatra

This directory has a Sinatra application that returns some
data of a `User` depending on the name that was used as a param.
While the script is running, the response for the request
`localhost:4567/v1/Gleney` is the JSON:

```json
{
  "name": "Gleney",
  "friends": [],
  "favorite_animals": [
    "dog",
    "cat",
    "giraffe"
  ]
}
```
## How to run it

To keep the example short, no Gemfile was created, but to be able to run the example, you
should have Sinatra installed. After installing it:

```
ruby app/application.rb
```

In another window, use:

```
curl localhost:4567/v1/Gleney
```

## Vanilla run

To generate a trace2 graph:

```
trace2 -o vanilla_trace2 --format png app/application.rb
```

Then, on another terminal/window, perform a curl.

```
curl localhost:4567/v1/Gleney
```

After that, return to the initial terminal
and press CTRL+C to exit sinatra.

### TODO: sinatra is broken: it starts to run on an at_exit callback, thus needing extra steps. Besides that, many strange characters appear on .dot file, and that should be solved
