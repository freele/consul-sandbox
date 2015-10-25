export CONFIG_DIR="/config"
cat $CONFIG_DIR/*.json.env | envsubst > $CONFIG_DIR/config.json
/bin/consul agent -config-dir=$CONFIG_DIR