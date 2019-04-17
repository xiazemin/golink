package exported
// Provided by package unexported.
import _ "unsafe"
import _ "github.com/xiazemin/golink/unexported"

func hellofunc() string

func Greet() string {
	return hellofunc()
}

//# github.com/xiazemin/golink/exported
//src/github.com/xiazemin/golink/exported/hello.go:3:6: missing function body