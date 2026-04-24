# Neovim Keymaps Cheatsheet

> **Leader key:** `<Space>`

---

## Navigasi Window & Split

| Keymap | Mode | Aksi |
|---|---|---|
| `<C-Up>` / `<S-k>` | Normal | Pindah ke window atas |
| `<C-Down>` / `<S-j>` | Normal | Pindah ke window bawah |
| `<C-Left>` / `<S-h>` | Normal | Pindah ke window kiri |
| `<C-Right>` / `<S-l>` | Normal | Pindah ke window kanan |

---

## Buffer

| Keymap | Mode | Aksi |
|---|---|---|
| `<C-L>` | Normal | Buffer berikutnya |
| `<C-H>` | Normal | Buffer sebelumnya |
| `<C-c>` | Normal | Tutup buffer (bwipeout) |
| `<leader>q` | Normal | Hapus buffer (bd) |

---

## File & Simpan

| Keymap | Mode | Aksi |
|---|---|---|
| `<C-w>` | Normal | Simpan file |
| `<C-q>` | Normal | Keluar |

---

## Editing

| Keymap | Mode | Aksi |
|---|---|---|
| `U` | Normal | Redo |
| `<leader>s` | Normal | Mass replace kata di bawah kursor |
| `<leader>y` | Normal, Visual | Yank ke clipboard sistem |
| `<leader>Y` | Normal | Yank baris ke clipboard sistem |

---

## Navigasi & Scroll

| Keymap | Mode | Aksi |
|---|---|---|
| `<C-d>` | Normal | Scroll ke bawah + center cursor |
| `<C-u>` | Normal | Scroll ke atas + center cursor |
| `n` | Normal | Next search result + center |
| `N` | Normal | Previous search result + center |
| `<C-f>` | Normal | Mulai pencarian (`/`) |

---

## Harpoon

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>a` | Normal | Tambah file ke harpoon |
| `<leader>1` | Normal | Buka file harpoon #1 |
| `<leader>2` | Normal | Buka file harpoon #2 |
| `<leader>3` | Normal | Buka file harpoon #3 |
| `<leader>4` | Normal | Buka file harpoon #4 |
| `<C-e>` | Normal | Buka harpoon picker (Telescope) |
| `<C-n> + dd` | Normal | Hapus item dari harpoon (Telescope picker) |

---

## Telescope

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>ff` | Normal | Cari file |
| `<leader>fs` | Normal | Live grep (cari teks) |
| `<leader>fb` | Normal | Daftar buffers |
| `<leader>fh` | Normal | Help tags |
| `<leader>gn` | Normal | Git files |
| `<C-t>` | Insert, Normal *(dalam Telescope)* | Buka hasil di Trouble |

---

## LSP *(aktif ketika LSP terpasang)*

| Keymap | Mode | Aksi |
|---|---|---|
| `gd` | Normal | Go to definition |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | References |
| `<leader><space>` | Normal | Hover documentation |
| `<leader>D` | Normal | Type definition |
| `<leader>rn` | Normal | Rename simbol |
| `<leader>ca` | Normal, Visual | Code action |
| `<leader>f` | Normal | Format file (async) |
| `<leader>d` | Normal | Tampilkan diagnostik (float) |

---

## Mason (LSP Manager)

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>m` | Normal | Buka Mason |
| `<leader>mu` | Normal | Update Mason |

---

## Git

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>gs` | Normal | Git status (Fugitive) |
| `<leader>lg` | Normal | Buka LazyGit |
| `<leader>gp` | Normal | Preview hunk (Gitsigns) |
| `<leader>gt` | Normal | Toggle line blame (Gitsigns) |
| `<leader>gd` | Normal | Buka diffview |
| `<leader>gh` | Normal | History file aktif (Diffview) |
| `<leader>gH` | Normal | History seluruh repo (Diffview) |
| `<leader>gx` | Normal | Tutup diffview |
| `q` | Normal *(dalam Diffview)* | Tutup diffview |

---

## Trouble (Diagnostics)

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>xx` | Normal | Semua diagnostik |
| `<leader>xX` | Normal | Diagnostik buffer aktif |
| `<leader>cs` | Normal | Simbol (Trouble) |
| `<leader>cl` | Normal | LSP definitions/references |
| `<leader>xL` | Normal | Location list |
| `<leader>xQ` | Normal | Quickfix list |

---

## File Explorer

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>]` | Normal | Toggle Neo-tree (sidebar kanan) |
| `<leader>e` | Normal | Toggle Neo-tree (float) |
| `<C-b>` | Normal | Fokus ke Neo-tree |
| `<leader>pv` | Normal | Buka direktori parent (Oil) |
| `<leader>-` | Normal, Visual | Buka Yazi di file aktif |
| `<leader>cw` | Normal | Buka Yazi di cwd |
| `<C-Up>` | Normal | Lanjutkan sesi Yazi terakhir |

### Neo-tree (di dalam window)

| Keymap | Aksi |
|---|---|
| `l` | Buka file/folder |
| `h` | Tutup node |
| `P` | Toggle preview (float) |
| `Z` | Expand semua node |
| `H` | Toggle hidden files |

---

## Autocompletion *(Insert & Select mode)*

| Keymap | Aksi |
|---|---|
| `<S-Tab>` | Konfirmasi saran |
| `<C-e>` | Batalkan completion |
| `<C-p>` | Item berikutnya / jump snippet maju |
| `<C-n>` | Item sebelumnya / jump snippet mundur |

---

## Undotree

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>u` | Normal | Toggle Undotree |

---

## Navigasi Kode

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>n` | Normal | Toggle Navbuddy (navigasi simbol LSP) |

---

## PDF Viewer

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>jj` | Normal | Halaman berikutnya (PDFview) |
| `<leader>kk` | Normal | Halaman sebelumnya (PDFview) |

---

## Umum

| Keymap | Mode | Aksi |
|---|---|---|
| `<leader>l` | Normal | Buka Lazy (plugin manager) |

---

## nvim-surround *(default bindings)*

| Keymap | Mode | Aksi |
|---|---|---|
| `ys{motion}{char}` | Normal | Tambah surround |
| `ds{char}` | Normal | Hapus surround |
| `cs{char}{char}` | Normal | Ganti surround |
| `S{char}` | Visual | Surround seleksi |
