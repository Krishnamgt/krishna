cd krishna.mgtcommerce.com/
ls -ltr
php bin/magento module:enable Mgt_Varnish
php bin/magento setup:upgrade
php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento module:enable Mgt_redis
vim /etc/varnish/default.vcl
exit
ls -ltr
git clone https://github.com/magento/magento2-sample-data.git
ls -ltr
php -f /home/cloudpanel/htdocs/krishna.mgtcommerce.com/magento2-sample-data/dev/tools/build-sample-data.php -- --ce-source="/home/cloudpanel/htdocs/krishna.mgtcommerce.com"
bin/magento setup:upgrade
php bin/magento config:set admin/security/session_lifetime 86400 && php bin/magento cache:flush
php bin/magento setup:di:compile
php bin/magento cache:flush
rm -rf var/cache/*
rm -rf var/session/*
bin/magento setup:upgrade
php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy -f
php bin/magento cache:flush
php bin/magento cache:flush
curl -I -k krishna.mgtcommerce.com
curl -I -k https://krishna.mgtcommerce.com
curl -I -k https://krishna.mgtcommerce.com
curl -I -k https://krishna.mgtcommerce.com
curl -I -k https://krishna.mgtcommerce.com
redis-cli info
redis-cli info
redis-cli info
redis-cli info
vim app/etc/env.php 
vim app/etc/env.php 
redis-cli monitor
redis-cli info
vim app/etc/env.php 
vim app/etc/env.php 
sudo systemctl restart service
sudo systemctl restart redis
exit
ls -ltr
php7.4 bin/magento module:enable Mgt_Waf
php7.4 bin/magento setup:upgrade
php7.4 bin/magento setup:di:compile
php7.4 bin/magento setup:static-content:deploy
cd ..
cd krishna-test.mgtcommerce.com/
exit
