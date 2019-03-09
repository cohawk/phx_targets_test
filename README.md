# UmbrellaTargetsTest

### sysinfo
```bash
$ uname -a
Darwin Kernel Version 18.2.0; x86_64

$ sw_vers
ProductName:  Mac OS X
ProductVersion: 10.14.3

$ /usr/sbin/system_profiler SPHardwareDataType
Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: MacBookPro10,2
      Processor Name: Intel Core i7
      Processor Speed: 2.9 GHz
      Number of Processors: 1
      Total Number of Cores: 2
      L2 Cache (per Core): 256 KB
      L3 Cache: 4 MB
      Memory: 8 GB

$ elixir -v
Erlang/OTP 21 [erts-10.2.3] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [hipe] [dtrace]

Elixir 1.8.1 (compiled with Erlang/OTP 21)

```

### Umbrella root
```
$ mix deps.get --target postgres
Umbrella Targets: :host
Elixir Targets: :host
Phoenix Targets: :host
Resolving Hex dependencies...

Failed to use "phoenix_ecto" (version 4.0.0) because
  apps/phx_targets_test/mix.exs requires ~> 3.0
  apps/phx_targets_test/mix.exs requires ~> 4.0

```

### phx_targets_test deps.get --target postgres
```
$ cd apps/
$ cd phx_targets_test/
$ mix deps.get --target postgres
Phoenix Targets: :host
warning: the dependency :phoenix_ecto is duplicated at the top level, please remove one of them
Resolving Hex dependencies...
Dependency resolution completed:
New:
  ...
  phoenix_ecto 4.0.0
  ...
  postgrex 0.14.1
  ...
```

### phx_targets_test deps.tree --target postgres
```
$ mix deps.tree --target postgres
Phoenix Targets: :host
warning: the dependency :phoenix_ecto is duplicated at the top level, please remove one of them
warning: the dependency :phoenix_ecto is duplicated at the top level, please remove one of them
phx_targets_test
...
├── postgrex >= 0.0.0 (Hex package)
│   ├── connection ~> 1.0 (Hex package)
│   ├── db_connection ~> 2.0 (Hex package)
│   │   └── connection ~> 1.0.2 (Hex package)
│   ├── decimal ~> 1.5 (Hex package)
│   └── jason ~> 1.0 (Hex package)
...
└── phoenix_ecto ~> 4.0 (Hex package)
    ├── ecto ~> 3.0 (Hex package)
    ├── phoenix_html ~> 2.9 (Hex package)
    └── plug ~> 1.0 (Hex package)
```

### phx_targets_test deps.get MIX_TARGET=postgres
```
$ MIX_TARGET=postgres mix deps.get
Phoenix Targets: :postgres
warning: the dependency :phoenix_ecto is duplicated at the top level, please remove one of them
Resolving Hex dependencies...

Failed to use "ecto" (version 3.0.7) because
  absinthe_ecto (version 0.1.3) requires >= 0.0.0
  ecto_sql (version 3.0.5) requires ~> 3.0.6
  mssql_ecto (version 1.2.0) requires ~> 2.2.0
  phoenix_ecto (version 4.0.0) requires ~> 3.0
  mix.lock specifies 3.0.7

** (Mix) Hex dependency resolution failed, change the version requirements of your dependencies or unlock them (by using mix deps.update or mix deps.unlock). If you are unable to resolve the conflicts you can try overriding with {:dependency, "~> 1.0", override: true}
```