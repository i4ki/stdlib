# fs related functions

# helper to check error from commands
fn cmdcheck(cmd) {
	_, stderr, status = cmd()
	if status != 0 {
		return format("error[status %d] msg[%s]", status, stderr)
	}
	return ""
}

fn mkdir(path) {
	return cmdcheck({mkdir -p $path})
}

fn mkdirs(paths...) {
	for p in paths {
		err = mkdir(p)
		if err != "" {
			return err
		}
	}
	return ""
}

fn pathExists(path) {
	return cmdcheck({test -e $path})
}