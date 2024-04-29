return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup({
            force_buffers = true,
            icons = { expanded = "", collapsed = "", current_frame = "." },
            mappings = {
                -- Use a table to apply multiple mappings
                expand = { "<CR>", "<2-LeftMouse>" },
                open = "o",
                remove = "d",
                edit = "e",
                repl = "r",
                toggle = "t",
            },
            -- Use this to override mappings for specific elements
            element_mappings = {
                -- Example:
                -- stacks = {
                --   open = "<CR>",
                --   expand = "o",
                -- }
            },
            expand_lines = vim.fn.has("nvim-0.7") == 1,
            layouts = {
                {
                    elements = {
                        -- Elements can be strings or table with id and size keys.
                        { id = "scopes", size = 0.25 },
                        "breakpoints",
                        "stacks",
                        "watches",
                    },
                    size = 40, -- 40 columns
                    position = "left",
                },
                {
                    elements = {
                        "repl",
                        "console",
                    },
                    size = 0.25, -- 25% of total lines
                    position = "bottom",
                },
            },
            controls = {
                -- Requires Neovim nightly (or 0.8 when released)
                enabled = true,
                -- Display controls in this element
                element = "repl",
                icons = {
                    pause = "",
                    play = "",
                    step_into = "",
                    step_over = "",
                    step_out = "",
                    step_back = "",
                    run_last = "",
                    terminate = "",
                },
            },
            floating = {
                max_height = nil,  -- These can be integers or a float between 0 and 1.
                max_width = nil,   -- Floats will be treated as percentage of your screen.
                border = "single", -- Border style. Can be "single", "double" or "rounded"
                mappings = {
                    close = { "q", "<Esc>" },
                },
            },
            windows = { indent = 1 },
            render = {
                max_type_length = nil, -- Can be integer or nil.
                max_value_lines = 100, -- Can be integer or nil.
            }
        })

        dap.listeners.before.attach.dapui_config = function()
             dapui.close()
             vim.cmd("NvimTreeClose")
             dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
             dapui.close()
             vim.cmd("NvimTreeClose")
             dapui.open()
        end
        --dap.listeners.before.event_terminated.dapui_config = function()
        --    dapui.close()
        --end
        --dap.listeners.before.event_exited.dapui_config = function()
        --    dapui.close()
        --end

        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap
        keymap("n", "<leader>d", "<Cmd>DapToggleBreakpoint<CR>", opts)
        keymap("n", "<leader>dx", "<Cmd>DapTerminate<CR>", opts)
        keymap("n", "<leader>e", "<Cmd>DapStepOver<CR>", opts)
        keymap("n", "<leader>ds", "<Cmd>DapLoadLaunchJSON<CR>", opts)
        keymap("n", "<leader>s", "<Cmd>DapContinue<CR>", opts)
        keymap("n", "<leader>ie", "<Cmd>DapStepInto<CR>", opts)
        keymap("n", "<leader>dt", "<Cmd>lua require('dapui').close()<CR>", opts)
    end
}
