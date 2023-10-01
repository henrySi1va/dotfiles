-- neorg.lua
-- Sets up neorg

return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},   -- Loads default behaviour
        ["core.concealer"] = {    -- Adds pretty icons to your documents
          config = {
            folds = true,
            icon_preset = "diamond",
          }
        },
        ["core.dirman"] = {       -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/Notes",
              wiki = "~/Wiki",
            },
            default_workspace = "notes",
          },
        },
      },
    }
  end,
}
