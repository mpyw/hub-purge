# hub-purge

Clear GitHub image caches on README

## Installation

### <a href="https://mise.jdx.dev/"><img src="https://mise.jdx.dev/logo.svg" height="28" alt=""></a> Using [mise](https://mise.jdx.dev/) (macOS/Linux)

**Recommended.** hub-purge is a single bash script, so mise installs it straight from this repository through the [`http` backend](https://mise.jdx.dev/dev-tools/backends/http.html):

```bash
mise use -g "http:hub-purge[url=https://raw.githubusercontent.com/mpyw/hub-purge/v{{ version }}/hub-purge]@1.0.1"
```

Or pin it per project in `mise.toml`:

```toml
[tools]
"http:hub-purge" = { version = "1.0.1", url = "https://raw.githubusercontent.com/mpyw/hub-purge/v{{ version }}/hub-purge" }
```

The `http` backend has no version index to query — the version is whatever the URL resolves to — so pin it to a tag rather than to `master`, and upgrades stay deliberate.

<details>
<summary>Installing manually with curl</summary>

```bash
(
    cd /tmp \
    && curl -LO https://raw.githubusercontent.com/mpyw/hub-purge/master/hub-purge \
    && chmod +x hub-purge \
    && mv hub-purge /usr/local/bin/hub-purge
)
```

</details>

## Example Usage

```ShellSession
mpyw@localhost:~$ hub-purge mpyw/suve mpyw/laravel-cached-database-stickiness
Fetching: https://github.com/mpyw/suve
Fetching: https://github.com/mpyw/laravel-cached-database-stickiness
Purging: https://camo.githubusercontent.com/f0e0ac08c21d9535fa06dfdb82188a0dd0ce6c36accdbb07dcccbc1c333a674d/68747470733a2f2f636f766572616c6c732e696f2f7265706f732f6769746875622f6d7079772f6c61726176656c2d6361636865642d64617461626173652d737469636b696e6573732f62616467652e7376673f6272616e63683d6d6173746572
Purging: https://camo.githubusercontent.com/046ef777835b51970bbdb03affce2d467730a661f7071373f0a97bfebe8d7def/68747470733a2f2f63646e2e73696d706c6569636f6e732e6f72672f686f6d6562726577
Purging: https://camo.githubusercontent.com/4cc7e363f297e7a9855259fa7d4693599af0d90376a28a0c6abf87e90aa385ad/68747470733a2f2f63646e2e73696d706c6569636f6e732e6f72672f6e706d
Purging: https://camo.githubusercontent.com/555e016d07080afcc7116c27306814b96369b5e499e76f4a203d344ccf4510da/68747470733a2f2f636f6465636f762e696f2f67682f6d7079772f737576652f67726170682f62616467652e737667
Purging: https://camo.githubusercontent.com/7df471b7c1db84a0c46307a92645e6e9c9135020481c0f4ef98bc866c714f9c0/68747470733a2f2f63646e2e73696d706c6569636f6e732e6f72672f6375726c
Purging: https://camo.githubusercontent.com/aaea9005e9ed7a145934054ddaa70c37388b76fee2b6a5e793e8d20d0946d025/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f612f61662f5475782e706e67
Purging: https://camo.githubusercontent.com/bb34fe634b7152c4f20b8f79105bb374237fe89cec1571b3dbf12f7f094493b6/68747470733a2f2f706b672e676f2e6465762f62616467652f6769746875622e636f6d2f6d7079772f737576652e737667
Purging: https://camo.githubusercontent.com/c26d49e4213a9954fd1715f1330582329339e5981f7f1ab9a473a39ff45500a5/68747470733a2f2f63646e2e73696d706c6569636f6e732e6f72672f676974
Purging: https://camo.githubusercontent.com/d4085e3cec209957de0b32766baa1978e463fe639f381213eb31d0be17dc638c/68747470733a2f2f63646e2e73696d706c6569636f6e732e6f72672f676f
Purging: https://camo.githubusercontent.com/dc3fba8b1b1120028b2f19bd0c4ae22fcd2dd0e9cbf534bb32dc4224b837ebe0/68747470733a2f2f6d6973652e6a64782e6465762f6c6f676f2e737667
Purging: https://camo.githubusercontent.com/fdf2982b9f5d7489dcf44570e714e3a15fce6253e0cc6b5aa61a075aac2ff71b/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4c6963656e73652d4d49542d79656c6c6f772e737667

mpyw@localhost:~$
```
