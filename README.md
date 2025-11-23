# spacecowboy.nvim

A noir-inspired Neovim colorscheme for console cowboys. Born from the neon-lit streets of Blade Runner, the digital sprawl of Neuromancer, and the jazz-infused cosmos of Cowboy Bebop.

## Features

- **Cyberpunk Aesthetic**: Carefully crafted palette balancing muted earth tones with vibrant accent colors
- **Semantic Highlighting**: Full support for TreeSitter and LSP semantic tokens
- **Language-Optimized**: Specialized highlighting for Python, TypeScript, JavaScript, JSX/TSX
- **Plugin Integration**: Native support for popular plugins (LSP, diagnostics, flash.nvim, snacks.nvim, etc.)
- **Terminal Transparency**: Designed to work beautifully with transparent backgrounds

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "andrewbgrant/spacecowboy.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("spacecowboy").setup({})
    vim.cmd.colorscheme("spacecowboy")
  end,
}
```

## 🎨 Color Palette

The spacecowboy palette draws inspiration from noir cinema and cyberpunk aesthetics:

### Base Colors

- **Sand** `#bfae9e` - Primary text
- **White** `#f2e6d3` - Variables and emphasis
- **Grey** `#7d94a1` - Secondary elements
- **Warm Grey** `#b8aa9e` - Comments

### Accent Colors

- **Steel Blue** `#5ba3d4` - Functions and methods
- **Sage Green** `#7bc97b` - Strings
- **Muted Orange** `#e6a050` - Properties and labels
- **Lavender** `#b899d4` - Keywords
- **Class Teal** `#5ababa` - Classes and constructors
- **Warm Yellow** `#f2d478` - Numbers and booleans
- **Rust** `#d4845a` - Errors and warnings
- **Red** `#d47b7b` - Exceptions

## ⚙️ Configuration

```lua
require("spacecowboy").setup({
  -- Customize colors
  on_colors = function(colors)
    -- Modify the color palette
    -- colors.sage_green = "#custom_color"
  end,

  -- Customize highlights
  on_highlights = function(highlights, colors)
    -- Modify highlight groups
    -- highlights.Comment = { fg = colors.grey, italic = false }
  end,
})
```

## 🔧 Usage

After installation, activate the colorscheme:

```lua
vim.cmd.colorscheme("spacecowboy")
```

Or in Vimscript:

```vim
colorscheme spacecowboy
```

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Submit pull requests
- Share screenshots of your setup

## 🙏 Acknowledgments

- Theme structure and setup based on [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim). Thanks to [@folke](https://github.com/folke) for the excellent template.
- Color palette inspired by [rose-pine/neovim](https://github.com/rose-pine/neovim) and [ayu-theme/ayu-vim](https://github.com/ayu-theme/ayu-vim) as well

## 📝 License

Apache 2.0

## 💫 Inspiration

> "I've seen things you people wouldn't believe..."

This theme is a love letter to the works that defined the cyberpunk genre and continue to inspire developers worldwide.

---

**See you space cowboy...**
