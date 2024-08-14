if status is-interactive
    alias c="clear"
    alias co="exec code"
    set fish_greeting
end

function pc
    pkg-config $argv | string trim | string split ' '
end

# copied from /usr/share/fish/completions/pkg-config.fish
complete -f -c pc -l modversion -d 'Print versions of the specified libraries'
complete -f -c pc -l version -d 'Display the version of pkg-config and quit'
complete -f -c pc -l help -d 'Displays a help message and quit'
complete -f -c pc -l print-errors -d 'Print message when errors occur'
complete -f -c pc -l silence-errors -d 'Stay quiet when errors occur'
complete -f -c pc -l errors-to-stdout -d 'Print errors to stdout instead of stderr'
complete -f -c pc -l debug -d 'Print debugging information'
complete -f -c pc -l cflags -d 'Print pre-processor and compile flags for the specified libraries'
complete -f -c pc -l cflags-only-I -d 'This prints the -I part of "--cflags".'
complete -f -c pc -l libs -d 'Print link flags'
complete -f -c pc -l libs-only-L -d 'This prints the -L/-R part of "--libs".'
complete -f -c pc -l libs-only-l -d 'This prints the -l part of "--libs"'
complete -f -c pc -l variable -d 'This returns the value of a variable defined in a package\'s .pc file'
complete -f -c pc -l define-variable -d 'This sets a global value for a variable'
complete -f -c pc -l print-variables -d 'Returns a list of all variables defined in the package'
complete -f -c pc -l uninstalled -d 'Return success if any -uninstalled packages are used'
complete -f -c pc -l max-version -d 'Test if a package has at most the specified version'
complete -f -c pc -l atleast-version -d 'Test if a package has at least this version'
complete -f -c pc -l exact-version -d 'Test if a package has exactly this version'
complete -f -c pc -l exists -d 'Test if a package exists'
complete -f -c pc -l static -d 'Output libraries suitable for static linking'
complete -f -c pc -l list-all -d 'List all modules found in the pkg-config path'
complete -f -c pc -l print-provides -d 'List all modules the given packages provides'
complete -f -c pc -l print-requires -d 'List all modules the given packages requires'
complete -f -c pc -l print-requires-private -d 'List all modules the given packages requires for static linking'
complete -f -c pc -a '(command pkg-config --list-all | string replace -r " (.*)" "\t\$1")'
