return {
  -- NOTE: Yes, you can install new plugins here!
  "mfussenegger/nvim-dap",

  -- NOTE: And you can specify dependencies as well
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
    -- FIXME: Cannot use `Ctrl` and `Shift` keys (e.g., `<S-F5>`)!
    vim.keymap.set("n", "<F5>", dap.continue)
    vim.keymap.set("n", "<F1>", dap.step_over)
    vim.keymap.set("n", "<F2>", dap.step_into)
    vim.keymap.set("n", "<F3>", dap.step_out)
    vim.keymap.set("n", "<F4>", dap.restart)
    vim.keymap.set("n", "<F6>", dap.terminate)
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "DAP: Toggle breakpoint" })
    vim.keymap.set("n", "<leader>B", function()
      dap.set_breakpoint(vim.fn.input "Breakpoint condition: ")
    end, { desc = "DAP: Toggle conditional breakpoint" })
    vim.keymap.set("n", "<leader>cb", dap.clear_breakpoints, { desc = "DAP: Clear breakpoints" })
    -- FIXME: Cannot exit the floating window!
    vim.keymap.set("n", "<leader>os", function()
      widgets.centered_float(widgets.scopes)
    end, { desc = "DAP: Open variables window" })

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
          local executablePath = "${workspaceFolder}/build/a.out"
          local alternateExecutablePath = "${workspaceFolder}/a.out"

          if vim.fn.filereadable(executablePath) == 1 then
            return executablePath
          else
            return alternateExecutablePath
          end
        end
      }
    }

    dap.configurations.c = dap.configurations.cpp
  end,
}
