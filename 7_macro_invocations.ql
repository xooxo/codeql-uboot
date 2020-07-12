import cpp

from MacroInvocation mc
where mc.getMacroName().regexpMatch("ntoh(s|l|ll)")
select mc
