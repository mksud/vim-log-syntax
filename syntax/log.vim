" Vim syntax file
" Language:         Generic log files

if exists("b:current_syntax")
  finish
endif

syn match log_error '\c.*\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\).*'
syn match log_warning '\c.*\<\(WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\).*'
syn region log_string start=/'/ end=/'/ end=/$/ skip=/\\./
syn region log_string start=/"/ end=/"/ skip=/\\./

syn match log_time_date '\d\d\/\d\d \d\d:\d\d:\d\d'

syn match log_url 'http[s]\?:\/\/[^\n|,; '"]\+'
syn match log_domain /\v(^|\s)(\w|-)+(\.(\w|-)+)+\s/
syn match log_uuid '\w\{8}-\w\{4}-\w\{4}-\w\{4}-\w\{12}'

hi def link log_string String
hi def link log_time_date Type
hi def link log_error ErrorMsg
hi def link log_warning WarningMsg
hi def link log_url Underlined
hi def link log_domain Label
hi def link log_uuid Label

let b:current_syntax = "log"
