read -r RICE < "$HOME"/.config/bspwm/.rice

# Vars config for Emilia Rice
# Bspwm border		# Fade true|false	# Shadows true|false	# Corner radius		# Shadow color
BORDER_WIDTH="0"	P_FADE="true"		P_SHADOWS="true"		P_CORNER_R="6"		SHADOW_C="#000000"

# (Tokyo Night) colorscheme
bg="#1a1b26"  fg="#c0caf5"

black="#15161e"   red="#f7768e"   green="#9ece6a"   yellow="#e0af68"
blackb="#414868"  redb="#f7768e"  greenb="#9ece6a"  yellowb="#e0af68"

blue="#7aa2f7"   magenta="#bb9af7"   cyan="#7dcfff"   white="#a9b1d6"
blueb="#7aa2f7"  magentab="#bb9af7"  cyanb="#7dcfff"  whiteb="#c0caf5"

# Terminal colors
set_term_config() {
  # Set kitty colorscheme
  cat >"$HOME"/.config/kitty/current-theme.conf <<EOF
# The basic colors
foreground              ${fg}
background              ${bg}
selection_foreground    ${bg}
selection_background    ${magenta}

# Cursor colors
cursor                  ${fg}
cursor_text_color       ${bg}

# URL underline color when hovering with mouse
url_color               ${blue}

# Kitty window border colors
active_border_color     ${magenta}
inactive_border_color   ${blackb}
bell_border_color       ${yellow}

# Tab bar colors
active_tab_foreground   ${bg}
active_tab_background   ${magenta}
inactive_tab_foreground ${white}
inactive_tab_background ${black}
tab_bar_background      ${bg}

# The 16 terminal colors

# black
color0 ${black}
color8 ${blackb}

# red
color1 ${red}
color9 ${redb}

# green
color2  ${green}
color10 ${greenb}

# yellow
color3  ${yellow}
color11 ${yellowb}

# blue
color4  ${blue}
color12 ${blueb}

# magenta
color5  ${magenta}
color13 ${magentab}

# cyan
color6  ${cyan}
color14 ${cyanb}

# white
color7  ${white}
color15 ${whiteb}
EOF

pidof -q kitty && killall -USR1 kitty
}

launch_theme() {

	# Set random wallpaper for actual rice
	# feh -z --no-fehbg --bg-fill "${HOME}"/.config/bspwm/rices/"${RICE}"/walls

	# Launch dunst notification daemon
	# dunst -config "${HOME}"/.config/bspwm/dunstrc &

	# Launch polybar

    killall -q polybar
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done;
	polybar -q halogen -c "${HOME}"/.config/bspwm/rices/"${RICE}"/config.ini &
}

set_term_config
launch_theme
