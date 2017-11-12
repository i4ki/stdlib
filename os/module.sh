# os module defines operating system independent functions.

import "fs.sh"

return map{
	"mkdirs": mkdirs,
	"mkdir": mkdir,
	"pathExists": pathExists,
}