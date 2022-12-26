vim.cmd([[
if exists("g:neovide")
    let g:neovide_transparency = 0.0
    let g:transparency = 0.9
    let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
    let g:neovide_floating_blur_amount_x = 25.0
    let g:neovide_floating_blur_amount_y = 25.0
endif
]])
