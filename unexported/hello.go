package unexported
import _ "unsafe"
//go:linkname hello github.com/xiazemin/golink/exported.hellofunc
func hello() string {
	return "private.hello()"
}