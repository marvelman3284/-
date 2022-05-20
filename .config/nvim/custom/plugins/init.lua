return {
   ["goolord/alpha-nvim"] = {
     disable = true,
   },

   ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
         require("nvim-ts-autotag").setup()
      end,
   },
   -- ["jose-elias-alvarez/null-ls.nvim"] = {
   --    after = "nvim-lspconfig",
   --    config = function()
   --       require("custom.plugins.null-ls").setup()
   --    end,
   -- },

   ["nvim-telescope/telescope-media-files.nvim"] = {
      after = "telescope.nvim",
      config = function()
         require("telescope").setup {
            extensions = {
               media_files = {
                  filetypes = { "png", "webp", "jpg", "jpeg" },
               },
               -- fd is needed
            },
         }
         require("telescope").load_extension "media_files"
      end,
   },

   ["Pocco81/TrueZen.nvim"] = {
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
      config = function()
         require "custom.plugins.truezen"
      end,
   },

   ["Pocco81/AutoSave.nvim"] = {
     config = function()
        local autosave = require "autosave"

        autosave.setup {
         enabled = true,
         execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
         events = { "InsertLeave", "TextChanged" },
         conditions = {
            exists = true,
            filetype_is_not = {},
            modifiable = true,
         },
         clean_command_line_interval = 2500,
         on_off_commands = true,
         write_all_buffers = false,
      }
   end,
  },

  ["wakatime/vim-wakatime"] = {},

  ["folke/trouble.nvim"] = {
    config = function() 
      require("trouble").setup{}
  end,
  },

  ['simrat39/symbols-outline.nvim'] = {},

  ['williamboman/nvim-lsp-installer'] = {},

  ['folke/todo-comments.nvim'] = {},
}
