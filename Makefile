drones:
	$(MAKE) -C foss-instrumentation || exit $$?

hardened:
	$(MAKE) -C hardened || exit $$?

clean:
	$(MAKE) -C foss-instrumentation -Orecurse $@ || exit $$?
	$(MAKE) -C hardened -Orecurse $@ || exit $$?

all:
	$(MAKE) -C foss-instrumentation || exit $$?
	$(MAKE) -C hardened || exit $$?

default: hardened
