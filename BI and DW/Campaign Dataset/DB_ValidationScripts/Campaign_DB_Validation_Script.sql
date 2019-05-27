#
# This script can be used to validate the contents of the MySQL Database, post Pentaho ETL completion.
#


SELECT count(*) FROM campaign.f_visits;
# 2196

SELECT count(*) FROM campaign.d_bridge;
# 2196

SELECT count(*) FROM campaign.d_product;
# 15


SELECT count(*) FROM campaign.f_sales_marketing;
# 0

SELECT count(*) FROM campaign.d_shopping_center;
#6 

SELECT count(*) FROM campaign.d_date;
#366