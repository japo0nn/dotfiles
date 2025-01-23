vim.opt.termguicolors = true

function SetColor(color)
    color =  color or 'material'
    vim.cmd.colorscheme(color)

end

SetColor('tokyonight')

require("tokyonight").setup {
    transparent = true,
    styles = {
       sidebars = "transparent",
       floats = "transparent",
    }
}
