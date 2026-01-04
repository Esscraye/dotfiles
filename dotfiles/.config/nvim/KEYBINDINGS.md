# Neovim Keybindings Reference

## FZF (Search/Navigation)
| Keymap | Action |
|--------|--------|
| `<leader>sh` | Search Help |
| `<leader>sk` | Search Keymaps |
| `<leader>sf` | Search Files |
| `<leader>ss` | Search Select (fzf.builtin) |
| `<leader>sw` | Search current Word (grep) |
| `<leader>sg` | Search by Grep (live) |
| `<leader>sd` | Search Diagnostics |
| `<leader>sr` | Search Resume |
| `<leader>s.` | Search Recent Files |
| `<leader><leader>` | Find existing Buffers |
| `<leader>/` | Fuzzily search in current buffer |
| `<leader>s/` | Search in Open Files |
| `<leader>sn` | Search Neovim config files |

## LSP (Language Server Protocol)
| Keymap | Action |
|--------|--------|
| `grn` | Rename (under cursor) |
| `gta` | Code Action |
| `gtr` | Goto References |
| `gti` | Goto Implementation |
| `gtd` | Goto Definition |
| `gtD` | Goto Declaration |
| `gds` | Document Symbols |
| `gws` | Workspace Symbols (live) |
| `gtt` | Goto Type Definition |
| `<leader>th` | Toggle Inlay Hints |

## Gitsigns (Git Integration)
| Keymap | Action | Mode |
|--------|--------|------|
| `]c` | Next Hunk | Normal |
| `[c` | Previous Hunk | Normal |
| `<leader>ghs` | Stage Hunk | Normal/Visual |
| `<leader>ghr` | Reset Hunk | Normal/Visual |
| `<leader>ghS` | Stage Buffer | Normal |
| `<leader>ghu` | Undo Stage Hunk | Normal |
| `<leader>ghR` | Reset Buffer | Normal |
| `<leader>ghp` | Preview Hunk | Normal |
| `<leader>ghb` | Blame Line (full) | Normal |
| `<leader>ghd` | Diff This | Normal |

## Fugitive (Git Commands)
| Keymap | Action |
|--------|--------|
| `<leader>gs` | Git Status |
| `<leader>gd` | Git Diff (split view) |
| `<leader>gc` | Git Commit |
| `<leader>gp` | Git Push |

## Neotest (Testing)
| Keymap | Action |
|--------|--------|
| `<leader>tn` | Test Nearest |
| `<leader>tf` | Test File |
| `<leader>ts` | Test Suite |
| `<leader>ta` | Test Attach |
| `<leader>to` | Test Output |

## Conform (Formatting)
| Keymap | Action |
|--------|--------|
| `<leader>fm` | Format buffer |

## Todo Comments
| Keymap | Action |
|--------|--------|
| `<leader>ft` | Find Todos |

## Avante (AI Assistant)
| Keymap | Action |
|--------|--------|
| `<leader>aa` | Ask Avante (open panel) |
| `<leader>a?` | Select model dynamically |
| `<leader>ar` | Refresh |
| `<leader>ae` | Edit |
| `<leader>at` | Toggle panel |
| `<M-l>` | Accept suggestion |
| `<M-]>` | Next suggestion |
| `<M-[>` | Previous suggestion |
| `<C-]>` | Dismiss suggestion |
| `<CR>` | Submit (normal mode) |
| `<C-s>` | Submit (insert mode) |
| `]]` | Jump to next diff |
| `[[` | Jump to previous diff |
| `A` | Apply all diffs (sidebar) |
| `a` | Apply current diff (sidebar) |
| `<Tab>` | Switch windows |
| `<S-Tab>` | Reverse switch windows |

## Which-key
- All keybindings show help with timeout of 300ms

## Notes
- **Leader key**: `<leader>` (typically Space)
- **Alt/Meta key**: `<M-...>`
- **Ctrl**: `<C-...>`
- **Shift**: `<S-...>`

### Keybinding Patterns
- `<leader>s` = Search (fzf)
- `<leader>gh` = Git Hunks (gitsigns)
- `<leader>g` = Git commands (fugitive)
- `<leader>t` = Tests (neotest)
- `gt` = Goto (LSP)
- `gr` = Rename (LSP)
