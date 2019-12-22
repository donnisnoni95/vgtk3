module gtk

pub struct Entry {
	gtk_widget &Widget
}

pub fn new_entry() Entry {
	btn := Entry{gtk_entry_new()}
	return btn
}

pub fn (e &Entry) get_gtk_widget() &Widget {
	return e.gtk_widget
}

pub fn (e Entry) get_text() string {
	return tos3(gtk_entry_get_text(e.gtk_widget))
}

pub fn (e Entry) set_text(text string) {
	gtk_entry_set_text(e.gtk_widget, text.str)
}

pub fn (e Entry) set_visibility(visible bool) {
	gtk_entry_set_visibility(e.gtk_widget, visible)
}

pub fn (e Entry) set_invisible_char(ch rune) {
	gtk_entry_set_invisible_char(e.gtk_widget, ch)
} 