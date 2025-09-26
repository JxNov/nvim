-- ================================================================================================
-- TITLE : intelephense (PHP Language Server) LSP Setup
-- LINKS :
--   > github : https://github.com/bmewburn/vscode-intelephense
-- ================================================================================================

--- @param capabilities table LSP client capabilities (from nvim-cmp)
--- @return nil
return function(capabilities)
  vim.lsp.config("intelephense", {
    capabilities = capabilities,
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_markers = { "composer.json", ".git", ".env" },
    settings = {
      intelephense = {
        files = { maxSize = 5000000 }, -- ignore large files
        format = { enable = true },
        diagnostics = { enable = true },
        environment = { phpVersion = "8.3" },
      },
    },
    on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }

      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", opts, { desc = desc }))
      end

      -- Go to
      map("n", "gd", vim.lsp.buf.definition, "Go to Definition")
      map("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
      map("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
      map("n", "gr", vim.lsp.buf.references, "List References")

      -- Hover & Signature
      map("n", "K", vim.lsp.buf.hover, "Hover Info")
      map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature Help")

      -- Workspace
      map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, "Add Workspace Folder")
      map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, "Remove Workspace Folder")
      map("n", "<leader>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, "List Workspace Folders")

      -- Actions
      map("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
      map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code Action")
      map("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, "Format Buffer")
    end,
  })
end

