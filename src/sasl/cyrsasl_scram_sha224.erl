-module(cyrsasl_scram_sha224).

-export([mechanism/0, mech_new/3, mech_step/2]).

-include("mongoose.hrl").

-include("jlib.hrl").

-behaviour(cyrsasl).

-spec mechanism() -> cyrsasl:mechanism().
mechanism() ->
    <<"SCRAM-SHA-224">>.

mech_new(Host, Creds, #{socket := Socket, auth_mech := AuthMech}) ->
    cyrsasl_scram:mech_new(Host, Creds, #{sha => sha224, scram_plus => false,
                                          socket => Socket, auth_mech => AuthMech}).

mech_step(State, ClientIn) ->
    cyrsasl_scram:mech_step(State, ClientIn).
