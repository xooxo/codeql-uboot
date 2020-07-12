import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // this time, we dont care specifics of a macro invocation; so variable here is a temporary variable that just 
    // represents boolean  
    exists(MacroInvocation mic |
        mic.getMacroName().regexpMatch("ntoh(s|l|ll)") and this = mic.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n