.PHONY: test
test:
	forge test

.PHONY: before_commit
before_commit: test
