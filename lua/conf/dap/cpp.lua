local dap = require('dap')

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = 'D:\\Program Files\\Compiler\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe',
    -- command = 'D:\\Program Files\\Compiler\\codelldb\\adapter\\codelldb.exe',
    options = {
        detached = false
    }
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\', 'file')
        end,
        -- program = "${workspaceFolder}\\a.exe",
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
        externalConsole = false,
        MIMode = "gdb",
        miDebuggerPath = "D:\\msys64\\mingw64\\bin\\gdb.exe",
        

    },
    -- {
    --   name = 'Attach to gdbserver :1234',
    --   type = 'cppdbg',
    --   request = 'launch',
    --   MIMode = 'gdb',
    --   miDebuggerServerAddress = 'localhost:1234',
    --   --miDebuggerPath = '/usr/bin/gdb',
    --   cwd = '${workspaceFolder}',
    --   program = function()
    --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --   end,
    -- },
}

setupCommands = {
    {
        text = '-enable-pretty-printing',
        description = 'enable pretty printing',
        ignoreFailures = false
    },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
