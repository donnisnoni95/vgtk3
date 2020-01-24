module gtk

// TODO: Remove the prefix `gtk__`, when V bug is fixed
pub type gtk__PackType int

pub const (
	PACK_START = PackType(C.GTK_PACK_START)
	PACK_END   = PackType(C.GTK_PACK_END)
)

pub const (
	MAJOR_VERSION = C.gtk_major_version
	MINOR_VERSION = C.gtk_minor_version
	MICRO_VERSION = C.gtk_micro_version
	VERSION = MAJOR_VERSION.str() + '.' + MINOR_VERSION.str() + '.' + MICRO_VERSION.str()
)