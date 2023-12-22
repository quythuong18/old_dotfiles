/* See LICENSE file for copyright and license details. */

/* appearance */
#include<X11/XF86keysym.h>
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int gappx     = 3;        /* gaps between windows */
//static const unsigned int snap      = 5;       /* snap pixel */
static const unsigned int gappih    = 4;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 0;       /* vert inner gap between windows */
static const unsigned int gappoh    = 4;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 4;       /* vert outer gap between windows and screen edge */

static const int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const unsigned int snap      = 28;       /* snap pixel */

static const unsigned int systraypinning = 0;   /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor X */
static const unsigned int systrayonleft = 0;   	/* 0: systray in the right corner, >0: systray on left of status text */
static const unsigned int systrayspacing = 1;   /* systray spacing */
static const int systraypinningfailfirst = 1;   /* 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor*/
static const int showsystray        = 1;     /* 0 means no systray */
static const int showbar            = 1;     /* 0 means no bar */
static const int topbar             = 1;     /* 0 means bottom bar */
static const int vertpad            = 3;       /* vertical padding of bar */
static const int sidepad            = 0;       /* horizontal padding of bar */

static const int horizpadbar        = 5;        /* horizontal padding for statusbar */
static const int vertpadbar         = 5;        /* vertical padding for statusbar */

static const char *fonts[]          = {"FiraCode Nerd Font:size=12:antialias=true:autohint=true:style:Bold"};
// static const char *fonts[]          = {"Ac437 Acer VGA 8x8:size=12:antialias=true:autohint=true:style:Bold"};
static const char dmenufont[]       = "Hack Nerd Font:size=12:style=Bold";

#include "/home/quythuong/.cache/wal/colors-wal-dwm.h"

/* tagging */
static const char *tags[] = { "1", "2", "3", "4"};


static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 8,       0,           -1 },
	{ NULL,      NULL,     "StFloat",     0,            1,          -1}
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },
#define STACKKEYS(MOD,ACTION) \
	{ MOD, XK_j,     ACTION##stack, {.i = INC(+1) } }, \
	{ MOD, XK_k,     ACTION##stack, {.i = INC(-1) } }, \
	{ MOD, XK_grave, ACTION##stack, {.i = PREVSEL } }, \
	{ MOD, XK_q,     ACTION##stack, {.i = 0 } }, \
	{ MOD, XK_a,     ACTION##stack, {.i = 1 } }, \
	{ MOD, XK_z,     ACTION##stack, {.i = 2 } }, \
	{ MOD, XK_x,     ACTION##stack, {.i = -1 } },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* Light */
static const char *light_up[] = {"sudo", "light", "-A", "10", NULL};
static const char *light_down[] = {"sudo", "light", "-U", "10", NULL};

/* Audio */
// static const char *upvol[] = { "/usr/bin/pactl", "set-sink-volume", "0", "+5%", NULL};
// static const char *downvol[] = { "/usr/bin/pactl", "set-sink-volume", "0", "-5%", NULL};
// static const char *mutevol[] = { "/usr/bin/pactl", "set-sink-mute", "0", "toggle", NULL};

static const char *upvol[] = { "/usr/bin/pulsemixer", "--change-volume", "+5", NULL};
static const char *downvol[] = { "/usr/bin/pulsemixer", "--change-volume", "-5", NULL};
static const char *mutevol[] = { "/usr/bin/pulsemixer", "--toggle-mute", NULL};

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", norm_bg, "-nf", norm_fg, "-sb", sel_bg, "-sf", sel_fg, NULL };
static const char *termcmd[]  = { "kitty", NULL };
static const char *termcmd_st_float[]  = { "st", "-T", "StFloat", "-g", "75x22+500+270", NULL };
static const char *termcmd_st_float_bc[]  = { "st", "-T", "StFloat", "-g", "75x22+500+270", "bc", "-q", "-l", NULL };
static const char *browser[]  = { "firefox", NULL };
static const char *screenCapture[]  = { "flameshot", "gui", NULL };
// static const char *rofi_launcher_run[]  = { "/home/quythuong/.config/rofi/launchers/type-3/launcher_run.sh", NULL };
static const char *powermenu[]  = { "/home/quythuong/.config/rofi/powermenu/type-3/powermenu.sh", NULL };
static const char *rofi_launcher_drun[]  = { "/home/quythuong/.config/rofi/launchers/type-3/launcher_drun.sh", NULL };
static const char *UI_file_manager[]  = { "nautilus", NULL };
static const char *zoom_screen[]  = { "/home/quythuong/.local/bin/zoom.sh", NULL };


static const Key keys[] = {
	/* modifier                     key                   function        argument */
	{ MODKEY,           			XK_s, 	              spawn,          {.v = screenCapture } },
	{ 0,			XF86XK_AudioLowerVolume,              spawn,          {.v = downvol } },
	{ 0,			XF86XK_AudioMute,                     spawn,          {.v = mutevol } },
	{ 0,			XF86XK_AudioRaiseVolume,              spawn,          {.v = upvol } },
	{ MODKEY,			            XK_F10,               spawn, 	      {.v = downvol } },
	{ MODKEY,		            	XK_F11,               spawn, 	      {.v = upvol } },
	{ MODKEY,			            XK_F9,                spawn, 	      {.v = mutevol } },
    { 0,        	XF86XK_MonBrightnessUp,               spawn,	      {.v = light_up} },
    { 0,	        XF86XK_MonBrightnessDown,             spawn,	      {.v = light_down} },
    { MODKEY,			            XK_F8,                spawn,	      {.v = light_up} },
    { MODKEY,			            XK_F7,	              spawn,	      {.v = light_down} },
    { MODKEY,                       XK_bracketleft,       spawn,          {.v = dmenucmd} },
    { MODKEY,                       XK_p,                 spawn,          {.v = rofi_launcher_drun } },
	{ Mod4Mask,                     XK_l,                 spawn,          {.v = powermenu } },
	{ MODKEY|ShiftMask,             XK_Return,            spawn,          {.v = termcmd } },
	{ Mod4Mask,                     XK_backslash,         spawn,          {.v = browser } },

	{ Mod4Mask,                     XK_c,                  spawn,         {.v = termcmd_st_float_bc } },
	{ Mod4Mask,                     XK_s,                  spawn,         {.v = termcmd_st_float } },

	{ Mod4Mask,                     XK_f,                  spawn,         {.v = UI_file_manager } },
	{ Mod4Mask,                     XK_z,                  spawn,         {.v = zoom_screen} },

	{ MODKEY,                       XK_b,                 togglebar,      {0} },
	//{ MODKEY,                       XK_Return,                 focusstack,     {.i = +1 } },
	// { MODKEY,                       XK_k,                 focusstack,     {.i = -1 } },
	// { MODKEY,                       XK_i,                 incnmaster,     {.i = +1 } },
	STACKKEYS(MODKEY,                          focus)
	STACKKEYS(MODKEY|ShiftMask,                push)
	{ MODKEY,                       XK_d,                 incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,                 setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,                 setmfact,       {.f = +0.05} },
	{ MODKEY|Mod4Mask,              XK_h,                 incrgaps,       {.i = +1 } },
	{ MODKEY|Mod4Mask,              XK_l,                 incrgaps,       {.i = -1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_h,                 incrogaps,      {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_l,                 incrogaps,      {.i = -1 } },
	{ MODKEY|Mod4Mask|ControlMask,  XK_h,                 incrigaps,      {.i = +1 } },
	{ MODKEY|Mod4Mask|ControlMask,  XK_l,                 incrigaps,      {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_0,                 togglegaps,     {0} },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_0,                 defaultgaps,    {0} },
	{ MODKEY,                       XK_y,                 incrihgaps,     {.i = +1 } },
	{ MODKEY,                       XK_o,                 incrihgaps,     {.i = -1 } },
	{ MODKEY|ControlMask,           XK_y,                 incrivgaps,     {.i = +1 } },
	{ MODKEY|ControlMask,           XK_o,                 incrivgaps,     {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_y,                 incrohgaps,     {.i = +1 } },
	{ MODKEY|Mod4Mask,              XK_o,                 incrohgaps,     {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_y,                 incrovgaps,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_o,                 incrovgaps,     {.i = -1 } },
	{ MODKEY,                       XK_Return,            zoom,           {0} },
	{ MODKEY,                       XK_Tab,               view,           {0} },
	{ MODKEY,		             	XK_c,                 killclient,     {0} },
	{ MODKEY,                       XK_t,                 setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,                 setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,                 setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,             setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,             togglefloating, {0} },
	{ MODKEY|ShiftMask,             XK_f,                 togglefullscr,  {0} },
	{ MODKEY,                       XK_0,                 view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,                 tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,             focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period,            focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,             tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period,            tagmon,         {.i = +1 } },
    { MODKEY,                       XK_space,             focusmaster,    {0} },
	TAGKEYS(                        XK_1,                                 0)
	TAGKEYS(                        XK_2,                                 1)
	TAGKEYS(                        XK_3,                                 2)
	TAGKEYS(                        XK_4,                                 3)
	TAGKEYS(                        XK_5,                                 4)
	TAGKEYS(                        XK_6,                                 5)
	TAGKEYS(                        XK_7,                                 6)
	TAGKEYS(                        XK_8,                                 7)
	TAGKEYS(                        XK_9,                                 8)
	// { MODKEY|ShiftMask,             XK_q,                 quit,           {0} },
	{ MODKEY|ShiftMask,             XK_BackSpace, quit,        {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

