$PBExportHeader$w_animate.srw
forward
global type w_animate from window
end type
type cb_2 from commandbutton within w_animate
end type
type mle_1 from multilineedit within w_animate
end type
end forward

global type w_animate from window
integer x = 823
integer y = 364
integer width = 2048
integer height = 1276
boolean titlebar = true
string title = "Animation Display Window"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
cb_2 cb_2
mle_1 mle_1
end type
global w_animate w_animate

type prototypes
Function Boolean AnimateWindow ( Long hwnd, Long dwtime, Long dwflags ) Library "user32"


end prototypes

type variables
Constant Long AW_HOR_POSITIVE = 1
Constant Long AW_HOR_NEGATIVE = 2
Constant Long AW_VER_POSITIVE = 4
Constant Long AW_VER_NEGATIVE = 8
Constant Long AW_CENTER = 16
Constant Long AW_HIDE = 65526
Constant Long AW_ACTIVATE = 131072
Constant Long AW_SLIDE = 262144
Constant Long AW_BLEND = 524288


end variables
on w_animate.create
this.cb_2=create cb_2
this.mle_1=create mle_1
this.Control[]={this.cb_2,&
this.mle_1}
end on

on w_animate.destroy
destroy(this.cb_2)
destroy(this.mle_1)
end on

event open;Long ll_handle
ll_handle = Handle ( This )
Randomize ( 0 )
Choose Case Rand ( 6 )
	Case 1
		AnimateWindow(ll_handle,1000,AW_SLIDE+AW_VER_POSITIVE+AW_ACTIVATE)
	Case 2
		AnimateWindow(ll_handle,1000,AW_SLIDE+AW_VER_NEGATIVE+AW_ACTIVATE)
	Case 3
		AnimateWindow(ll_handle,1000,AW_SLIDE+AW_HOR_POSITIVE+AW_ACTIVATE)
	Case 4
		AnimateWindow(ll_handle,1000,AW_SLIDE+AW_HOR_NEGATIVE+AW_ACTIVATE)
	Case 6,5
		AnimateWindow(ll_handle,1000,AW_SLIDE+AW_CENTER+AW_ACTIVATE)
End Choose



end event

event close;Long ll_handle
ll_handle = Handle(This)
AnimateWindow(ll_handle,300,AW_SLIDE+AW_HIDE+AW_CENTER)


end event

type cb_2 from commandbutton within w_animate
integer x = 1600
integer y = 1020
integer width = 251
integer height = 108
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

Event clicked;Close(w_animate)
End event

type mle_1 from multilineedit within w_animate
integer x = 201
integer y = 144
integer width = 1541
integer height = 796
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "This is an animated opening window, implemented by the AnimateWindow() function"
borderstyle borderstyle = stylelowered!
end type

