/*
        BankPresets.ahk
        Developed by XORcism
*/
#IfWinActive, RuneLite ; Will only run these hotkeys if RuneLite is active
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    Declaring Global Variables        ;
;______________________________________;
; Coordinates for the "All Items tab"  ;
allTabX := 635                         ;
allTabY := 101                         ;
;                                      ;
; Coordinates for Tab 1                ;
tab1X := 600                           ;
tab1Y = 165                            ;
;                                      ;
; Coordinates for Tab 2                ;
tab2X := 600                           ;
tab2Y = 205                            ;
;                                      ;
; Coordinates for Deposit all          ;
depX := 1000                           ;
depY := 825                            ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;; All Functions ;;;;;;;;;;;;;;;;;;

; LoadPreset(All Tab x-coordinate, All Tab y-coordinate, Desired Tab x-coordinate, Desired Tab y-coordinate)
LoadPreset(tabX, tabY){
        global allTabX, allTabY
        MouseMove, %allTabX%, %allTabY%
        click
        sleep 100
        MouseMove, %tabX%, %tabY%
        click
        sleep 100
        MouseMove, 645, 142
        click
        MouseMove, 695, 142
        click
        MouseMove, 745, 142
        click
        MouseMove, 795, 142
        click
        MouseMove, 845, 142
        click
        MouseMove, 895, 142
        click
        Return
}

; DepositAll()
DepositAll() {
        sleep 100
        global depX, depY
        MouseMove, %depX%, %depY%
        click
        Reload
        sleep 100
        Return
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;; All Hotkeys ;;;;;;;;;;;;;;;;;;;;
; Load TAB 1 ;
1::
        LoadPreset(tab1X, tab1Y)
        Return

; Load TAB 2 ;
2::
        LoadPreset(tab2X, tab2Y)
        Return
; Deposit entire inventory
3::
        DepositAll()
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


