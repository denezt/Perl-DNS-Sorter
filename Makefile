# Created by: Richard L. Jackson
# Install all dependencies.

DEP='liblist-moreutils-perl'
APT=apt-get
APT_FLG='install'
OUTPUT="outputfile.txt"

all: build_all install test clean

build_all:
	@printf "\033[33mStarting, build process...\033[0m\n"

install:
	@$(APT) -y $(APT_FLG) $(DEP) && printf "\033[32mInstalled, required packages for\033[0m \033[34mList\033[0m\033[31m::\033[0m\033[34mUtil\033[0m\n"

test:
	@printf "\033[32mRunning,\033[0m \033[34mDNS List Sorter\033[0m...\n"
	@./dns_list_sorter.pl && printf "\033[32mDone!\033[0m\n"
	@printf "\033[35mSearching,\033[0m \033[34mfor file $(OUTPUT)\n"
	@find $(OUTPUT) > /dev/null && printf "\033[0m\033[32mPassed,\033[0m \033[35mfile creation process\033[0m...\n" \
	|| printf "\033[0m\033[31mFailure, unable to pass file creation process.\033[0m\n"
clean:
	@rm -rfv $(OUTPUT) && printf "\033[35mRemoved, test data\033[0m\n"
