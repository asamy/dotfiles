---------------------------
-- Default awesome theme --
---------------------------

theme = {}
theme.wallpaper_cmd = {"awsetbg /home/bart/images/archbw.png"}

theme.font          = "snap 8"

theme.bg_normal     = "#020202"
theme.bg_focus      = "#020202"
theme.bg_urgent     = "#000000"
theme.bg_minimize   = "#000000"

theme.fg_normal     = "#C6C6C6"
theme.fg_focus      = "#D8D9DA"
theme.fg_urgent     = "#000000"
theme.fg_minimize   = "#000000"

theme.border_width  = "1"
theme.border_normal = "#555555"
theme.border_focus  = "#AAAAAA"
theme.border_marked = "#000000"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_fg_focus = "#CaC7B4"

-- Display the taglist squares
theme.taglist_squares_sel   = "/home/bart/.config/awesome/themes/mine/taglist/squarefz.png"
theme.taglist_squares_unsel = "/home/bart/.config/awesome/themes/mine/taglist/squarez.png"

theme.tasklist_floating_icon = "/home/bart/.config/awesome/themes/mine/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/home/bart/.config/awesome/themes/mine/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/home/bart/.config/awesome/themes/mine/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/home/bart/.config/awesome/themes/mine/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/home/bart/.config/awesome/themes/mine/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/bart/.config/awesome/themes/mine/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/home/bart/.config/awesome/themes/mine/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/home/bart/.config/awesome/themes/mine/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/home/bart/.config/awesome/themes/mine/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/bart/.config/awesome/themes/mine/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/home/bart/.config/awesome/themes/mine/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/home/bart/.config/awesome/themes/mine/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/home/bart/.config/awesome/themes/mine/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/home/bart/.config/awesome/themes/mine/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/home/bart/.config/awesome/themes/mine/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/home/bart/.config/awesome/themes/mine/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/home/bart/.config/awesome/themes/mine/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/bart/.config/awesome/themes/mine/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/home/bart/.config/awesome/themes/mine/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/home/bart/.config/awesome/themes/mine/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh = "/home/bart/.config/awesome/themes/mine/layouts/fairh.png"
theme.layout_fairv = "/home/bart/.config/awesome/themes/mine/layouts/fairv.png"
theme.layout_floating  = "/home/bart/.config/awesome/themes/mine/layouts/floating.png"
theme.layout_magnifier = "/home/bart/.config/awesome/themes/mine/layouts/magnifier.png"
theme.layout_max = "/home/bart/.config/awesome/themes/mine/layouts/max.png"
theme.layout_fullscreen = "/home/bart/.config/awesome/themes/mine/layouts/fullscreen.png"
theme.layout_tilebottom = "/home/bart/.config/awesome/themes/mine/layouts/tilebottow.png"
theme.layout_tileleft   = "/home/bart/.config/awesome/themes/mine/layouts/tileleft.png"
theme.layout_tile = "/home/bart/.config/awesome/themes/mine/layouts/tile.png"
theme.layout_tiletop = "/home/bart/.config/awesome/themes/mine/layouts/tx`iletop.png"
theme.layout_spiral  = "/home/bart/.config/awesome/themes/mine/layouts/spiral.png"
theme.layout_dwindle = "/home/bart/.config/awesome/themes/mine/layouts/dwindle.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
 --vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80
