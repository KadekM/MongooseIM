-ifdef(OTP_RELEASE).
-if(?OTP_RELEASE >= 23).
-define(PG_JOIN(Group, PID), pg:join(Group, PID)).
-define(PG_GET_MEMBERS(Group), pg:get_members(Group)).
-else.
-define(PG_JOIN(Group, PID), pg2:create(Group), pg2:join(Group, PID)).
-define(PG_GET_MEMBERS(Group), pg2:get_members(Group)).
-endif.
-else.
-define(PG_JOIN(Group, PID), pg2:create(Group), pg2:join(Group, PID)).
-define(PG_GET_MEMBERS(Group), pg2:get_members(Group)).
-endif.
