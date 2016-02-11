default: docs

docs:
	$(MAKE) -C drones -Orecurse || exit $$?

docs2:
	$(MAKE) -C hardened -Orecurse || exit $$?

clean:
	$(MAKE) -C drones -Orecurse $@ || exit $$?

