#!/usr/bin/env j
Note''
    Copyright © 2024 Christopher Augustus

    This Source Code Form is subject to the terms of the Mozilla Public
    License, v. 2.0. If a copy of the MPL was not distributed with this
    file, You can obtain one at http://mozilla.org/MPL/2.0/.
)
main=:3 :0
  NB. TODO: @@@ eliminate variable "input"
  input=:>2{ARGV,<''
  count=.>{:{{
    {{input=:1!:1[1[1!:2&4'countdown: '}}^:(0&=)#input
    (<1+>{.y),<{{input=:''[1!:2&2'Invalid countdown ',":input,', try again...'}}(^:(0=#))".input
  }}^:((0=#)@:>@:{:)^:_(<0),<''
  1!:2&4'World, Hello...'
  NB. TODO: @@@ i. works inside ( ) but usleep does not
  NB. (i.     1000000](1!:2&4@:('...',~(>@:":))))&.>|.1+i.count
  NB. (usleep 1000000](1!:2&4@:('...',~(>@:":))))&.>|.1+i.count
  NB. TODO: @@@ usleep only works inside the dfns below
  {{usleep 1000000[1!:2&4(>":y),'...'}}&.>|.1+i.count
    NB. TODO: ^ ### FLUSH NEEDED ON macOS BUT NOT ON Windows
  0 0$1!:2&2'Bye Bye.'
)
9!:29(1)[9!:27'main _'
NB. ^ help from tangentstorm and
NB. https://code.jsoftware.com/wiki/Vocabulary/Foreigns#m9
