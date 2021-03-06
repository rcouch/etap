#!/usr/bin/env escript
%% -*- erlang -*-
%%! -pa ./ebin -pa ./t

main(_) ->
    etap:plan(2),
    Body = "This is a test.",
    etap:contains_ok(Body, "test", "Proving contains_ok/3."),
    etap:is_before(Body, "is", "a test", "Proving is_before/4"),
    etap:end_tests().
