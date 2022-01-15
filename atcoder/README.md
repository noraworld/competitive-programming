# AtCoder
https://atcoder.jp/home

<dl>
  <dt><a>ABS</a></dt>
  <dd>AtCoder Beginners Selection. Just tutorials. For details, see <a href="https://qiita.com/drken/items/fd4e5e3630d0f5859067">here (Japanese)</a>.</dd>
  <dt><a>ABC</a></dt>
  <dd>AtCoder Beginner Contest. For beginner programmers.</dd>
  <dt><a>ARC</a></dt>
  <dd>AtCoder Regular Contest. For intermediate programmers.</dd>
  <dt><a>AGC</a></dt>
  <dd>AtCoder Grand Contest. For advanced programmers.</dd>
</dl>

## Requirements
- [AtCoder Tools](https://github.com/kyuridenamida/atcoder-tools)

```toml
# ~/.atcodertools.toml

[codestyle]
workspace_dir='/path/to/competitive_programming/atcoder/'
lang='python'
```

```shell
# Download input and output example files
$ atcoder-tools gen <PROBLEM_ID>

# Run test
$ atcoder-tools test
```

`<PROBLEM_ID>` is in URL. For example, if you want to solve [`atcoder.jp/contests/abc235`](https://atcoder.jp/contests/abc235), it should be `abc235`.

When downloading files with `gen` subcommand, a username and a password is required for a contest being held right now, otherwise you can use `--without-login` option to skip a login.
