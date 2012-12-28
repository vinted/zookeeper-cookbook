default[:zookeeper][:version] = "3.4.5"
default[:zookeeper][:mirror] = "http://mirrors.ibiblio.org/apache/zookeeper/zookeeper-#{default[:zookeeper][:version]}/zookeeper-#{default[:zookeeper][:version]}.tar.gz"
default[:zookeeper][:user] = "exhibitor"

default[:exhibitor][:version] = "1.4.3"
default[:exhibitor][:mirror] = "https://github.com/Netflix/exhibitor/archive/exhibitor-#{default[:exhibitor][:version]}.tar.gz"

default[:exhibitor][:snapshot_dir] = "/mnt/zookeeper_snapshots"
default[:exhibitor][:transaction_dir] = "/mnt/zookeeper_transactions"
default[:exhibitor][:log_index_dir] = "/mnt/zookeeper_log_indexes"

# Period (ms) to check for shared config updates.
default[:exhibitor][:opts][:optscheckms] = 30000
# Extra text to display in UI header
default[:exhibitor][:opts][:headingtext] = "Simple"
# Styling used for the JQuery-based UI. Currently available options: red, black, custom
default[:exhibitor][:opts][:jquerystyle] = "black"
# Max lines of logging to keep in memory for display.
default[:exhibitor][:opts][:loglines] = "1000"
# If true, the Explorer UI will allow nodes to be modified (use with caution).
default[:exhibitor][:opts][:nodemodification] = "false"
# Port for the HTTP Server
default[:exhibitor][:opts][:port] = "8080"
# true/false (default is false).
# If enabled, ZooKeeper will be queried once a minute for its state via the 'mntr' four letter word
# (this requires ZooKeeper 3.4.x+). Servo will be used to publish this data via JMX.
default[:exhibitor][:opts][:servo] = "true"
# Connection timeout (ms) for ZK connections.
default[:exhibitor][:opts][:timeout] = "30000"


default[:exhibitor][:environment] = "stage"
default[:exhibitor][:s3config] = ""
default[:exhibitor][:s3backup] = "true"
