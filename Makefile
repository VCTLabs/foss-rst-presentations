default: docs

docs:
	$(MAKE) -C src -Orecurse || exit $$?

clean:
	$(MAKE) -C src -Orecurse $@ || exit $$?
