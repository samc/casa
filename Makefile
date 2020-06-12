.PHONY: init
init:
	@$(MAKE) script SCRIPT=init

.PHONY: script
script:
	@. ./script/$(SCRIPT)
