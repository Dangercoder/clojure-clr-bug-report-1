# clojure-clr-bug-report-1

## Problem
clojure-clr nrepl does not work on Linux (.NET 7).

`Unhandled exception. Syntax error macroexpanding at (/user.cljr:19:1).  
Could not locate clojure/tools/nrepl with extensions .cljr, .cljc, .cljr, .cljr.dll, .cljc.dll, or .clj.dll on load path`

## Run it

`docker build -t clojure-clr-bug .`  
`docker run docker.io/library/clojure-clr-bug`
