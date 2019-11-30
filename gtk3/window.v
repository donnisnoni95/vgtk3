module gtk3

fn C.gtk_window_set_default_size(&C.GtkWidget, int, int)
fn C.gtk_window_set_position(&C.GtkWidget, int)
fn C.gtk_window_set_title(&C.GtkWidget, voidptr)

pub fn (w Window) add(widget Widgeter) {
	C.gtk_container_add(w.gtk_widget, widget.get_gtk_widget())
}

pub fn (w Window) show() {
	C.gtk_widget_show_all(w.gtk_widget)
}

pub fn (w Window) set_size(width int, height int) {
	C.gtk_window_set_default_size(w.gtk_widget, width, height)
}

pub fn (w Window) center() {
	C.gtk_window_set_position(w.gtk_widget, C.GTK_WIN_POS_CENTER)
}

pub fn (w Window) set_title(title string) {
	C.gtk_window_set_title(w.gtk_widget, title.str)
}

pub fn (w &Window) add_on_destroy(handler fn(&C.GtkWidget,Window)) int {
	return C.g_signal_connect(w.gtk_widget, "destroy", handler, w)
}

fn (w &Window) get_gtk_widget() &C.GtkWidget {
	return w.gtk_widget
} 
