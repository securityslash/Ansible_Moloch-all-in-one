################################################################################
if [ -d "/etc/security/limits.d" ] && [ ! -f "/etc/security/limits.d/99-moloch.conf" ]; then
    echo "Moloch - Installing /etc/security/limits.d/99-moloch.conf to make core and memlock unlimited"
    cat << EOF > /etc/security/limits.d/99-moloch.conf
nobody  -       core    unlimited
root    -       core    unlimited
nobody  -       memlock    unlimited
root    -       memlock    unlimited
EOF
fi
