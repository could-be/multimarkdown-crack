.PHONY: init clean install
RM=

mod:
	$(SHELL chmod 755 build/init.sh)
	$(SHELL chmod 755 build/install.sh)

init: mod
	./build/init.sh

# 使用 IDEA build 项目以后,运行
install: mod
	./build/install.sh

clean:
	rm -rf tmp out
