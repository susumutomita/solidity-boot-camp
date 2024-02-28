.PHONY: deploy_local
deploy_local:
	anvil

.PHONY: test
test:
	forge test

.PHONY: format
format:
	forge fmt

.PHONY: format_check
format_check:
	forge fmt --check

.PHONY: gas_snapshot
gas_snapshot:
	forge snapshot

.PHONY: start_local_node
start_local_node:
	anvil

.PHONY: before_commit
before_commit: format test
