local mini_files = require("mini.files")

mini_files.setup({
  mappings = {
    go_in_plus = "<cr>",
    go_out_plus = "<bs>",
    reset = "r",
  },
})

vim.keymap.set("n", "<leader>e", function()
  if not mini_files.close() then
    mini_files.open()
  end
end, { silent = true, desc = "toggle mini.files explorer" })

vim.api.nvim_create_autocmd("user", {
  pattern = "minifilesbuffercreate",
  callback = function(args)
    local buf_id = args.data.buf_id
    -- honestly forgot what was gonna go here
  end,
})
