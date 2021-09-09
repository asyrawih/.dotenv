local chad_modules = {
   "options",
   "mappings",
   "go"
}

for i = 1, #chad_modules, 1 do
   if not pcall(require, chad_modules[i]) then
      error("Error loading " .. chad_modules[i] .. "\n")
   end
end

require("mappings").misc()
require("go").setup({
  goimport = 'gopls', -- if set to 'gopls' will use golsp format
  gofmt = 'gopls', -- if set to gopls will use golsp format
  max_line_len = 120,
  tag_transform = false,
  test_dir = '',
  comment_placeholder = ' ?  ',
  lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = true, -- use on_attach from go.nvim
  dap_debug = true,
})

