$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer x = 823
integer y = 364
integer width = 1691
integer height = 536
boolean titlebar = true
string title = "Animation Display Window"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_main.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_main
integer x = 338
integer y = 140
integer width = 960
integer height = 156
integer taborder = 10
integer textsize = -20
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Show"
end type

event clicked;Open(w_animate)
end event

