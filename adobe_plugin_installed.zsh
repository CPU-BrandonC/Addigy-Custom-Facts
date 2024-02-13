#!/bin/zsh

# Adobe Plug-In check script - Brandon Chesser
# Returns 'true' if a plug-in exists for any version of an Adobe app

# Adobe Application you want to check
adobe_app="Adobe InDesign"

# Plug-In name (This can be found in "/Applications/Adobe App xxxx/Plug-Ins/)
plug_in_name="EasyCatalog"

# Creates a new empty array to store each version of a specific Adobe App
adobe_app_versions=()
# Prevents whitespace from being ommited from each new line
while IFS= read -r line; do
    # Appends each new line as a separate element in the array while preserving spaces
    adobe_app_versions+=("$line")
# Outputs the full path of each Adobe version as a new line
done < <(ls -d /Applications/* | grep "$adobe_app")

# Print the array elements for verification. This should be uncommented for troubleshooting only.
# for version in "${adobe_app_versions[@]}"; do
#     echo "$version"
# done

for version in "${adobe_app_versions[@]}"; do
    # echo $version
    if [ -d "$version/Plug-Ins/$plug_in_name" ]; then
        result=true
        # echo $version
        break
    else
        result=false
    fi
done

echo $result