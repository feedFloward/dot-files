return {
{
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python"
  },

    config = function () 
        require("neotest").setup({
      adapters = {
          require("neotest-python")({
              dap = { justMyCode = false },
              runner = "pytest",
            }),
    },
})
      local map = vim.keymap.set
      map("n", "<leader>td", function() require("neotest").run.run({ strategy = "dap" }) end, {desc="Debug nearest test"})
end,
}
}
