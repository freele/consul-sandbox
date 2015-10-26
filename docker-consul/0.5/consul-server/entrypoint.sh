export CONFIG_DIR="/config"

# Parse settings with env variables
for filename in $CONFIG_DIR/*.json.env; do
    cat "$filename" | envsubst > $CONFIG_DIR/$(basename ${filename} .env)
done

/bin/consul agent -config-dir $CONFIG_DIR 