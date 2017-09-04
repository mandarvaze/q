# Q

Quick and dirty debugging output for Elixir programmers

Inspired from [similar project](https://github.com/zestyping/q) for python

There is also a golang version [here](https://github.com/y0ssar1an/q)

## Installation

The package can be installed by adding `qq` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:qq, "~> 0.1.1"}]
end
```

Documentation is available on [HexDocs](https://hexdocs.pm/qq/api-reference.html).

## (Possibly) FAQ

Since no one knows about this yet, no one asking questions (yet) ;)

### Why `Q.q`?
It's quick to type and unlikely to cause naming collisions.

### Why name the hex package `qq`?
I started as just `q`, but when publishing, I got an error that the hex package
must have at least two letters. At first I used `qdbg`, but then switched to
`qq`

### Why another logger ?
If you haven't read about the original python project that inspired this package, please do.

TL;DR : Setting up `Logger` is tedious, sometimes you just want to see the values while debugging.
`Q.q` is already "set" for you. Add `Q.q` statements to your code, and run.

Now go watch the output in `$TMPDIR/q`
If your log has JSON, then it is pretty printed for better readability.


## Credit

I came across this idea via y0assar1an's golang implementation, which points to
zestyping's original package for python.

Needless to say, first I thank zestyping for the original idea.

I thank Jose Valim for creating elixir lang :)

I thank Jeffery Baird for
his [post](http://learnwithjeff.com/blog/2015/10/28/your-first-hex-package/) on
how to create hex package.
