return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
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
              },
            },
          },
          ["core.esupports.hop"] = {},
          ["core.esupports.indent"] = {},
          ["core.qol.toc"] = {},
        },
      })
    end,
  }
