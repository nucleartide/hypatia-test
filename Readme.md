# hypatia-test

A test of [Hypatia](https://github.com/kindl/Hypatia), to see whether it could be used for PICO-8.

Hypatia is an ML-family language that compiles to Lua.

## Build

Build the `hypatia` binary with [`cabal`](https://www.haskell.org/cabal/).

Then, compile the program with the following command:

```bash
$ hypatia compile Game.hyp
```

## Conclusion

It works! However, it might be easier to just use Lua directly. Lua is already quite functional programming friendly.
