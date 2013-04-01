#!/bin/bash

# http://brettterpstra.com/2013/03/30/a-multi-purpose-editor-variable/

case "$1" in
    *_EDITMSG|*MERGE_MSG|*_TAGMSG )
        /usr/local/bin/vim "$1"
        ;;{% cycle 'first value', 'second value' %}
    * )
        /usr/local/bin/subl -w "$1"
        ;;
esac