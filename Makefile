

check: pkg/*
	gofmt -e $^ > /dev/null
