DIRS := node-10 node-12
BUILD_DIRS :=  $(addsuffix .build,$(DIRS))
CLEAN_DIRS :=  $(addsuffix .clean,$(DIRS))

build: $(BUILD_DIRS)
$(BUILD_DIRS):
	@echo $@
	$(MAKE) -C $(basename $@) build


clean: $(CLEAN_DIRS)
$(CLEAN_DIRS):
	@echo $@
	$(MAKE) -C $(basename $@) clean

 
.PHONY: build $(BUILD_DIRS) clean $(CLEAN_DIRS) 
