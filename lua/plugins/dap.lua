return {
  "mfussenegger/nvim-dap",

  dependencies = {
    -- Creates a beautiful debugger UI.
    "rcarriga/nvim-dap-ui",

    -- Installs the debug adapters for you.
    "jay-babu/mason-nvim-dap.nvim",
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    local widgets = require("dap.ui.widgets")

    require("mason-nvim-dap").setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations.
      automatic_setup = true,

      -- You'll need to check that you have the required things installed
      -- online.
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want.
        "codelldb"
      },
    }

    -- Basic debugging keymaps.
    vim.keymap.set("n", "<leader>dr", dap.restart, { desc = "Debug: Restart" })
    vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "Debug: Start/Continue" })
    vim.keymap.set("n", "<leader>dn", dap.step_over, { desc = "Debug: Next" })
    vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Debug: Step into" })
    vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Debug: Step out" })
    vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Debug: Terminate" })

    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debug: Toggle breakpoint" })

    vim.keymap.set("n", "<leader>dB", function()
      dap.set_breakpoint(vim.fn.input "Breakpoint condition: ")
    end, { desc = "Debug: Toggle conditional breakpoint" })

    vim.keymap.set("n", "<leader>dc", dap.clear_breakpoints, { desc = "Debug: Clear breakpoints" })

    -- FIXME: Cannot exit the floating window!
    -- TODO: Consider to toggle the window with the same keymap.
    vim.keymap.set("n", "<leader>dv", function()
      widgets.centered_float(widgets.scopes)
    end, { desc = "Debug: Open variables window" })

    vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#fc5d7c" })
    vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#9ed072" })

    vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "ﳁ", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "DapStopped" })

    -- Dap UI setup (for more information, see |:help nvim-dap-ui|).
    dapui.setup {
      icons = { expanded = "", collapsed = "", current_frame = "" },

      layouts = { {
        elements = {
          { id = "scopes",  size = 0.37 },
          { id = "watches", size = 0.26 },
          { id = "stacks",  size = 0.37 }
        },
        position = "left",
        size = 40
      }, {
        elements = {
          { id = "console", size = 1.0 }
        },
        position = "bottom",
        size = 10
      } },

      controls = {
        element = "console",
        enabled = true
      }
    }

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        -- Change This to your path!
        command = "codelldb",
        args = { "--port", "${port}" },

        -- On windows you may have to uncomment this:
        -- detached = false
      }
    }

    dap.configurations.cpp = {
      {
        name = "Output",
        type = "codelldb",
        request = "launch",
        -- TODO: Ask for an executable path if the following does not exist!
        program = function()
          local vimfinity = require("vimfinity")
          return vimfinity.find_executable_path()
        end
      }
    }

    dap.configurations.c = dap.configurations.cpp
  end,
}
