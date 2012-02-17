.PHONY: deps test

all: deps compile

compile:
	@./rebar compile

debug:
	@./rebar debug_info=1 compile

deps:
	@./rebar get-deps

clean:
	@./rebar clean

test:
	@./rebar compile skip_deps=true eunit

