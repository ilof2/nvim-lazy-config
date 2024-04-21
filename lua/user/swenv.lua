require('swenv').setup({
    get_venvs = function(venvs_path)
        return require('swenv.api').get_venvs(venvs_path)
    end,
    venvs_path = vim.fn.expand('~/Library/Caches/pypoetry/virtualenvs'),
    post_set_venv = function()
        return vim.cmd.LspRestart
    end
})
