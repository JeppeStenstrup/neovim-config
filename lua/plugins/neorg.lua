return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
  },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {
          config = {
            icons = {
              heading = {
                icons = {
                  "▸", -- H1
                  "▸", -- H2
                  "▸", -- H3
                  "▸", -- H4
                  "▸", -- H5
                  "▸", -- H6
                },
              },
            },
          },
        }, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
              discrete_math = "~/notes/discrete_mathematics/",
              daily_planning = "~/notes/daily_planning/"
            },
            default_workspace = "notes"
          },
        },
        ["core.esupports.hop"] = {},
        ["core.esupports.indent"] = {},
        ["core.qol.toc"] = {},
        ["core.qol.todo_items"] = {},
        ["core.keybinds"] = {
          config = {
            keybind_preset = "neorg"
          }
        },
        ["core.itero"] = {},
        ["external.templates"] = {},
      },
    })
  end,
}
