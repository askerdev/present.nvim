# `present.nvim`

This is my first Neovim plugin that i ever made

It's super cool

# Installation

`lazy`

```lua
return {
    "askerdev/present.nvim",
}
```

# Description

This plugin is made to make beautiful presentations from markdown and show them right in Neovim

# Usage

- 1. Open an markdown file or write markdown into any buffer
- 2. Run `Present start` command

# Features

Code block execution
Just press `X` when you on the slide with code block and do not forget to setup your language executor

## Example

`lazy`

```lua
return {
  "askerdev/present.nvim",
  config = function()
    local p = require("present")
    p.setup({
      executors = {
        python = p.create_system_executor("python3"),
      },
    })
  end
}
```

Now you can execute first python code block on presentation slide and see result in floating popup window :D
