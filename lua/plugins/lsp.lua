return {
  -- LSP Configuration & Plugins
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- Autocompletion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip"
  },

  config = function()
    -- This function gets run when an LSP connects to a particular buffer.
    local on_attach = function(client, bufnr)
      -- We create a function that lets us more easily define mappings specific
      -- for LSP related items. It sets the mode, buffer and description for us each time.
      local nmap = function(keys, func, desc)
        if desc then
          desc = "LSP: " .. desc
        end

        vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
      end

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      nmap("gd", vim.lsp.buf.definition, "Goto Definition")
      -- TODO: Do I need the next one?
      nmap("gi", vim.lsp.buf.implementation, "Goto Implementation")
      nmap("K", vim.lsp.buf.hover, "Hover Documentation")
      nmap("<leader>rn", vim.lsp.buf.rename, "Rename")
      nmap("gr", require("telescope.builtin").lsp_references, "Goto References")
      nmap("<leader>f", function() vim.lsp.buf.format { async = true } end, "Format Buffer")
    end

    -- Enable the following language servers. They will automatically be installed.
    --  Add any additional override configuration in the following tables. They will be passed to
    --  the `settings` field of the server config.
    local servers = {
      clangd = {
        --[[ -- Switch between source/header (C/C++).
        vim.keymap.set("n", "gsh", ":ClangdSwitchSourceHeader<CR>") ]]
      },
      cmake = {},
      lua_ls = {}
    }

    -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    require("mason").setup()

    -- Ensure the servers above are installed
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup {
      ensure_installed = vim.tbl_keys(servers),
    }

    mason_lspconfig.setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
        }
      end,
    }

    -- nvim-cmp setup
    local cmp = require "cmp"
    local luasnip = require "luasnip"

    luasnip.config.setup {}

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert {
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete {},
            ["<CR>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
            ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }
    }
  end
}