package require Markdown

::rivet::load_env

if {[info exists ::request::env(PATH_TRANSLATED)]==0} {
    ::rivet::headers numeric 400
    return
}

if {[file exists $::request::env(PATH_TRANSLATED)]==0} {
    ::rivet::headers numeric 404
    return
}

set in [open $::request::env(PATH_TRANSLATED)]
set md [read $in]
close $in
set data [::Markdown::convert $md]

::rivet::headers type "text/html;charset=utf-8"
puts $data
