#!/bin/bash

enable_undercover_root_shell_theme() {
    printf ': undercover && export PS1='\''C:${PWD//\//\\\\\}> '\''\n' >> /root/.bashrc
}

disable_undercover_root_shell_theme() {
    sed -i -e '/: undercover/d' /root/.bashrc
}

case $1 in
    enable)
        enable_undercover_root_shell_theme
        ;;
    disable)
        disable_undercover_root_shell_theme
        ;;
esac
