return {
    'nvim-treesitter/nvim-treesitter',
    event = {"BufReadPre", "BufNewFile"},
    run = ':TSUpdate',
    config = function ()
        local status_ok, configs = pcall(require, "nvim-treesitter.configs")
        if not status_ok then
          return
        end

        configs.setup {
          ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
          sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
          auto_install = true,
          autopairs = {
            enable = true,
          },
          highlight = {
            enable = true, -- false will disable the whole extension
            additional_vim_regex_highlighting = false,
          },
        }
    end
}
