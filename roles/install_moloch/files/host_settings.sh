################################################################################
if [ -d "/etc/logrotate.d" ] && [ ! -f "/etc/logrotate.d/capture_node" ]; then
    echo "Moloch - Installing /etc/logrotate.d/capture_node to rotate files after 7 days"
    cat << EOF > /etc/logrotate.d/capture_node
/data/moloch/logs/capture.log
/data/moloch/logs/viewer.log {
    daily
    rotate 7
    notifempty
    copytruncate
}
EOF
fi
