local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require("dap.ui.widgets")
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function ()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function ()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
  },
}

M.edit = {
  n = {
    ["<C-S-up>"] = {
      "<cmd> :m -2 <CR>",
      "Move current line up",
    },
    ["<C-S-down>"] = {
      "<cmd> :m +1 <CR>",
      "Move current line down",
    },
  },
  v = {
    ["<A-up>"] = {
      "x<up>P`[V`]",
      "Move selected text up",
    },
    ["<A-down>"] = {
      "xp`[V`]",
      "Move selected text down",
    },
  },
}

return M
