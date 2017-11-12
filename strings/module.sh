# Module strings defines simple functions to manipulate
# or create UTF-8 strings.

# join concatenates the elements of the list `lst` into a new string
# with values separated by `sep`. `Lst` must contains only string
# values.
# This function is the bastard brother of builtin `split`.
fn join(lst, sep) {
	last	= len(lst)-1
	indices = {seq 0 $last}
	indices = split(indices, "\n")
	str		= ""

	for i in indices {
		if i != last {
			str = str+lst[i]+sep
		} else {
			str = str+lst[i]
		}
	}

	return str
}

return map{
	"join": join,
}