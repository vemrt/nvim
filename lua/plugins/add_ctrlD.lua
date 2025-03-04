return {
  "mg979/vim-visual-multi",
  keys = {
    { "<C-n>", ":<C-u>call vm#commands#find_all(0, 1)<CR>", mode = { "n", "x" }, desc = "Select All Occurrences" },
  },
}
