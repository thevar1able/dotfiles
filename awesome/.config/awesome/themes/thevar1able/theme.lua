local beautiful = require("beautiful")

-- {{{ Main
theme = {}
theme.wallpaper = beautiful.theme_path .. "/onecolor.png"
theme.useless_gap = 3
-- }}}

-- {{{ Styles
theme.font      = "sans 8"

-- {{{ Colors
theme.fg_normal  = "#BFBFBF" --"#DCDCCC"
theme.fg_focus   = "#F8F8F2"
theme.fg_urgent  = "#F8F8F2"
theme.bg_normal  = "#171820"
theme.bg_focus   = "#171820" --"#101010"
theme.bg_urgent  = "#171820" --"#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 0
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#6F6F6F"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#101010" --"#3F3F3F"
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = beautiful.theme_path .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = beautiful.theme_path .. "/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
-- theme.awesome_icon           = "/usr/share/awesome/icons/arch.png"
-- theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = beautiful.theme_path .. "/layouts/tile.png"
theme.layout_tileleft   = beautiful.theme_path .. "/layouts/tileleft.png"
theme.layout_tilebottom = beautiful.theme_path .. "/layouts/tilebottom.png"
theme.layout_tiletop    = beautiful.theme_path .. "/layouts/tiletop.png"
theme.layout_fairv      = beautiful.theme_path .. "/layouts/fairv.png"
theme.layout_fairh      = beautiful.theme_path .. "/layouts/fairh.png"
theme.layout_spiral     = beautiful.theme_path .. "/layouts/spiral.png"
theme.layout_dwindle    = beautiful.theme_path .. "/layouts/dwindle.png"
theme.layout_max        = beautiful.theme_path .. "/layouts/max.png"
theme.layout_fullscreen = beautiful.theme_path .. "/layouts/fullscreen.png"
theme.layout_magnifier  = beautiful.theme_path .. "/layouts/magnifier.png"
theme.layout_floating   = beautiful.theme_path .. "/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = beautiful.theme_path .. "/titlebar/close_focus.png"
theme.titlebar_close_button_normal = beautiful.theme_path .. "/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = beautiful.theme_path .. "/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = beautiful.theme_path .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = beautiful.theme_path .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = beautiful.theme_path .. "/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = beautiful.theme_path .. "/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = beautiful.theme_path .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = beautiful.theme_path .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = beautiful.theme_path .. "/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = beautiful.theme_path .. "/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = beautiful.theme_path .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = beautiful.theme_path .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = beautiful.theme_path .. "/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = beautiful.theme_path .. "/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = beautiful.theme_path .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = beautiful.theme_path .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = beautiful.theme_path .. "/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
