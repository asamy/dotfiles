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

theme.fg_normal     = "#BBBBBB"
theme.fg_focus      = "#FFFFFF"
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

theme.taglist_bg_focus = "#555555"

-- You can use your own layout icons like this:
theme.layout_fairh = "/usr/share/awesome/themes/zenburn//layouts/fairh.png"
theme.layout_fairv = "/usr/share/awesome/themes/zenburn//layouts/fairv.png"
theme.layout_floating  = "/usr/share/awesome/themes/zenburn//layouts/floating.png"
theme.layout_magnifier = "/usr/share/awesome/themes/zenburn//layouts/magnifier.png"
theme.layout_max = "/usr/share/awesome/themes/zenburn//layouts/max.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/zenburn//layouts/fullscreen.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/zenburn//layouts/tileleft.png"
theme.layout_tile = "/usr/share/awesome/themes/zenburn//layouts/tile.png"
theme.layout_tiletop = "/usr/share/awesome/themes/zenburn//layouts/tiletop.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/zenburn//layouts/tilebottom.png"
theme.layout_spiral  = "/usr/share/awesome/themes/zenburn//layouts/spiral.png"
theme.layout_dwindle = "/usr/share/awesome/themes/zenburn//layouts/dwindle.png"
theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
