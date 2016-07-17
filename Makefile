default: drones

all: drones hardened

drones:
	$(MAKE) -C foss-instrumentation -Orecurse || exit $$?

hardened:
	$(MAKE) -C $@ -Orecurse || exit $$?

clean:
	$(MAKE) -C foss-instrumentation -Orecurse $@ || exit $$?
	$(MAKE) -C hardened -Orecurse $@ || exit $$?

