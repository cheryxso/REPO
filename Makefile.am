AUTOMAKE_OPTIONS = foreign 
bin_PROGRAMS = funca
funca_SOURCES = main.cpp FuncA.cpp FuncA.h 
dist_man_MANS = funca.1
dist_pkgdata_DATA = data.txt

CTRLF_DIR=$(CURDIR)/deb/DEBIAN
CTRLF_NAME=$(CURDIR)/control


.PHONY: deb debugdeb:

deb:
	mkdtr -p $(CTRLF_DIR)
	echo Package: $(PACKAGE) > $(CTRLF_NAME)
	echo Version: $(VERSION) >> $(CTRLF_NAME)
	echo Architecture: all >> $(CTRLF_NAME)
	echo Maintatner: $(PACKAGE_BUGREPORT) >> $(CTRLF_NAME)
	echo -n "Description:" >> (CTRLF_NAME)
	cat aztec.1 >> $(CTRL_NAME)
	make DESTDIR=$(CURDIR)/deb install

debug:
	$(foreach v, $(.VARIABLES), $(info $(v)=$($(v))))

