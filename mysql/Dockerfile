FROM mysql:8.0
# RUN echo "RoboShop@1" > /tmp/mysql_root_password.txt
COPY db/* /docker-entrypoint-initdb.d/
# COPY entrypoint.sh /usr/local/bin/entrypoint.sh
# RUN chmod +x /usr/local/bin/entrypoint.sh
# ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]