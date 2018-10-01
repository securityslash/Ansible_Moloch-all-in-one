################################################################################
if [ -d "/etc/logrotate.d" ] && [ ! -f "/etc/logrotate.d/WISE_Logs" ]; then
    echo "Wise - Installing /etc/logrotate.d/WISE_Logs to rotate files after 7 days"
    cat << EOF > /etc/logrotate.d/WISE_Logs
/data/moloch/logs/wise.log {
    daily
    rotate 7
    notifempty
    copytruncate
}
EOF
fi
