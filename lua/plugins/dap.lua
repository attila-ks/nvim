return {
  "mfussenegger/nvim-dap",

  dependencies = {
    -- Creates a beautiful debugger UI.
    "rcarriga/nvim-dap-ui",

    -- Installs the debug adapters for you.
    "jay-babu/mason-nvim-dap.nvim",

    -- Add your own debuggers here.
    "vadimcn/vscode-lldb",
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
        "lldb",
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

    -- Dap UI setup (for more information, see |:help nvim-dap-ui|).
    dapui.setup {
      icons = { expanded = "", collapsed = "", current_frame = "" }
    }

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    dap.adapters.lldb = {
      type = "executable",
      command = "/usr/bin/lldb-vscode",
      name = "lldb"
    }

    dap.configurations.cpp = {
      {
        name = "DebugMe",
        type = "lldb",
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
