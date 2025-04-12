-- ~/.config/nvim/lua/plugins/telescope.lua

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup()

      -- Key mappings
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep,  { desc = "Telescope: Live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers,    { desc = "Telescope: Find buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags,  { desc = "Telescope: Help tags" })
    end,
  }
}

