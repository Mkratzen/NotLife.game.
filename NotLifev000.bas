[inits]
DIM cfg$
LET cfg$ = FileRead("config.ini")
LET wid# = VAL(cfg$("width"))
LET hgt# = VAL(cfg$("height"))
LET title$ = cfg$("title")
LET ver$ = cfg$("version")
SCREEN 0, wid#, hgt#, "NotLife"
LET wht# = RGB(255, 255, 255)
LET red# = RGB(220, 60, 60)
LET grn# = RGB(90, 210, 110)
LET blu# = RGB(70, 140, 230)
LET ylw# = RGB(250, 251, 10)
LET darkfont# = RGB(149, 149, 149)
LET subcat# = RGB(230, 235, 239)
LET xmenu# = wid# / 2 - 60
LET ymenu# = hgt# / 2 - 15
LET titlex$ = wid# / 2 - 100
LET titley$ = hgt# * 0.1
[splash]
SCREENLOCK ON
CLS
COLOR 0, 12
CLS
LOADFONT "Scabber-q2Mn0.ttf", 26
DRAWSTRING ver$, (hgt# / 2), (wid# / 2), wht#
SCREENLOCK OFF
SLEEP 1640
GOTO [menu]
[menu]
SCREENLOCK ON
CLS
COLOR 0, 12
CLS
LOADFONT "Scabber-q2Mn0.ttf", 50
DRAWSTRING title$, titlex$, titley$, ylw#
LINE (xmenu# - 20, ymenu# - 15) - (xmenu# + 140, ymenu# + 45), subcat#, BF
LOADFONT "happy-times-at-the-ikob.ttf", 23
DRAWSTRING "Enter Game", xmenu#, ymenu#, darkfont#
SCREENLOCK OFF
WHILE TRUE
        IF MOUSEX >= (xmenu# - 20) AND MOUSEX <= (xmenu# + 140) AND MOUSEY >= (ymenu# - 15) AND MOUSEY <= (ymenu# + 45) AND MOUSELEFT = 1 THEN
            GOTO [game]
        END IF
        SLEEP 10
WEND
[game]
SCREENLOCK ON
LOADFONT "Scabber-q2Mn0.ttf", 26
CLS
COLOR 0, 15
CLS
LINE (0, 0)-(wid#, 64), red#, BF
DRAWSTRING title$, (wid# * 0.4), 20, ylw#
LOADFONT "happy-times-at-the-ikob.ttf", 19
DRAWSTRING "I", 12, 21, darkfont#
SCREENLOCK OFF
SLEEP 2000
