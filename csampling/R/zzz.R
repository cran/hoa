.First.lib <- function(libname, pkgname) 
{
  version <- as.character("1.1-2 (2007-10-16)")
  cat("\n   Package \"csampling\"", version, "\n")
  cat("   Copyright (C) 2000-2007 A. R. Brazzale\n\n")
  cat("This is free software, and you are welcome to redistribute\n")
  cat("it and/or modify it under the terms of the GNU General\n")
  cat("Public License published by the Free Software Foundation.\n")
  cat("Package \"csampling\" comes with ABSOLUTELY NO WARRANTY.\n\n")
  cat("type `help(package=\"csampling\")' for summary information\n")
  require(marg)
  invisible()
}
