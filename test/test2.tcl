#
# Copyright (C) 2004-2006, Maciej Sobczak
# Copyright (C) 2017-2018, FlightAware LLC
#
# Permission to copy, use, modify, sell and distribute this software
# is granted provided this copyright notice appears in all copies.
# This software is provided "as is" without express or implied
# warranty, and with no claim as to its suitability for any purpose.
#

set e [info sharedlibextension]
load "./libtest2$e"

set i [fun1]
if {$i != 7} { error "Assertion failed" }

set s [fun2]
if {$s != "Ala ma kota"} { error "Assertion failed" }

set i [add 4 5]
if {$i != 9} { error "Assertion failed" }

set i [mystrlen $s]
if {$i != [string length $s]} { error "Assertion failed" }
