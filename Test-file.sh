#!/bin/bash

FILE_PATH=$(find / -type f -name "shoaib.html" 2>/dev/null)

if [ -z "$FILE_PATH" ]; then
    echo "File shoaib.html not found."
    exit 1
else
    echo "File found at: $FILE_PATH"
fi

sudo cp "$FILE_PATH" /var/www/html/

sudo systemctl start nginx

echo "Complete Deployment."
