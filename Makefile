sort:
	@sort -o wordbank.txt wordbank.txt
	@echo Sorted wordbank
lint:
	@shellcheck $(FILE)
quiz:
	@ ./quiz.sh
