#!/bin/bash

color_red='\033[0;31m'
color_reset='\033[0m'
color_green='\033[0;32m'
success=0

read_readme_files() {
    local current_path="$1"
    local files=$(curl -s "$current_path" | grep -oE 'href="([^"]+)"' | cut -d'"' -f2)
    for file in $files; do

        if [[ "$(basename "$file")" == "README" ]]; then
            content=$(curl -s "$current_path/$file")
            echo -e ">> ${color_red} $current_path$file :  ${color_reset}  \"$content\""

            if echo "$content" | grep -qi "flag"; then
                echo -e "${color_green} success ${color_reset}"
                success=1

            fi
        elif [[ "$(basename "$file")" != ".." && "$file" == *"/"* ]]; then
            read_readme_files "$current_path$file/"  # Appel récursif pour les sous-dossiers
        fi

        if [ $success -eq 1 ]; then
            break
        fi
    done
}


#read_readme_files "http://10.12.200.47/.hidden/"


## POUR ALLER PLUS VITE:
read_readme_files "http://10.12.200.47/.hidden/whtccjokayshttvxycsvykxcfm/"


## POUR ALLER ENCIRE PLUS VITE:
#read_readme_files "http://10.12.200.47/.hidden/whtccjokayshttvxycsvykxcfm/igeemtxnvexvxezqwntmzjltkt/"
