import cpp

from MacroInvocation mic
where mic.getMacroName().regexpMatch("ntoh(s|l|ll)")
select mic.getExpr()

