package stackoverflowceptionCheck

import (
	"fmt"
	"testing"
)

func TestStackoverflowceptionCheck(t *testing.T) {
	if !stackoverflowceptionCheck(fmt.Errorf("This is a dummy error")) {
		t.Fatalf("Error not catched")
	}

}
