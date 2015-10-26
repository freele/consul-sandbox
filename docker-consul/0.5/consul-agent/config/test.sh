for filename in ./*.json.env; do
    cat "$filename" | envsubst > $(basename ${filename} .env)
done