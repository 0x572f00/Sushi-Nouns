#!/bin/bash

output_file="images.json"
image_folder="3-heads/"

# Function to convert image to hexadecimal data
convert_image_to_hex() {
    local image_path=$1
    local hex_data=$(xxd -p "$image_path" | tr -d '\n')
    echo "{
      \"filename\": \"$(basename "$image_path" | cut -d. -f1)\",
      \"data\": \"0x$hex_data\"
    }"
}

# Recursive function to process images in a folder
process_images_in_folder() {
    local folder=$1
    local indent=$2

    echo "$indent\"heads\": ["
    indent="$indent  "

    for file in "$folder"/*; do
        if [ -d "$file" ]; then
            process_images_in_folder "$file" "$indent"
        elif [ -f "$file" ]; then
            local image_hex=$(convert_image_to_hex "$file")
            echo "$indent$image_hex,"
        fi
    done

    echo "$indent]"
}

# Start processing images
echo "{" > "$output_file"
process_images_in_folder "$image_folder" "  " >> "$output_file"
echo "}" >> "$output_file"

echo "Image processing completed. JSON file generated: $output_file"