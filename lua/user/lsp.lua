---

local servers = { 
  "cssls",
  "html",
  "intelephense",
  "omnisharp",
  "pyright", 
  "rust_analyzer", 
  "tsserver", 
}

---

local config = {
  virtual_text = false,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
}

vim.diagnostic.config(config)

---

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gl", '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
  -- vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format{async=true}' ]])
  -- vim.keymap.set('n', '<Leader>i', vim.lsp.buf.formatting, opts)
end

local lspconfig = require("lspconfig")

for _, lsp in ipairs(servers) do
  if lsp == "tsserver" then
    lspconfig[lsp].setup {
      -- root_dir = function(fname) return lspconfig.util.root_pattern("*")(fname) end,
      on_attach = on_attach,
      capabilities = capabilities,
    }
  elseif lsp == "omnisharp" then
    lspconfig[lsp].setup {
      cmd = { "dotnet", "/home/yukihiro/.dotnet/tools/omnisharp/OmniSharp.dll" },
      -- enable_editorconfig_support = true,
      -- enable_ms_build_load_projects_on_demand = false,
      -- enable_roslyn_analyzers = false,
      -- organize_imports_on_format = false,
      -- enable_import_completion = false,
      -- sdk_include_prereleases = true,
      -- analyze_open_documents_only = false,
      on_attach = on_attach,
      capabilities = capabilities,
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end
