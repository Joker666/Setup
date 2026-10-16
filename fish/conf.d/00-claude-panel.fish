# The Claude desktop Terminal panel does not answer fish's DA1 query, so restart fish there with terminal queries off.
if status is-interactive; and test "$TERM_PROGRAM" = claude-desktop; and not set -q fish_features
    set -gx fish_features no-query-term
    set -l fish_bin (status fish-path)
    if status is-login
        exec $fish_bin -l
    end
    exec $fish_bin
end
