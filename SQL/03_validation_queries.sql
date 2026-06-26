-- ============================================
-- Database Validation Queries
-- ============================================

-- 1. Verify all tables contain data

SELECT COUNT(*) AS customers
FROM olist_customers_dataset;

SELECT COUNT(*) AS geolocations
FROM olist_geolocation_dataset;

SELECT COUNT(*) AS products
FROM olist_products_dataset;

SELECT COUNT(*) AS sellers
FROM olist_sellers_dataset;

SELECT COUNT(*) AS orders
FROM olist_orders_dataset;

SELECT COUNT(*) AS order_items
FROM olist_order_items_dataset;

SELECT COUNT(*) AS order_payments
FROM olist_order_payments_dataset;

SELECT COUNT(*) AS order_reviews
FROM olist_order_reviews_dataset;

SELECT COUNT(*) AS category_translation
FROM product_category_name_translation;


-- ============================================
-- Preview Data
-- ============================================

SELECT * FROM olist_orders_dataset LIMIT 10;

SELECT * FROM bi_fact_sales LIMIT 10;


-- ============================================
-- Verify Foreign Key Relationships
-- ============================================

SELECT COUNT(*)
FROM olist_orders_dataset o
JOIN olist_customers_dataset c
ON o.customer_id = c.customer_id;

SELECT COUNT(*)
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
ON oi.product_id = p.product_id;


-- ============================================
-- Verify BI Views
-- ============================================

SELECT COUNT(*) FROM bi_dim_product;

SELECT COUNT(*) FROM bi_fact_order;

SELECT COUNT(*) FROM bi_fact_review_latest;

SELECT COUNT(*) FROM bi_fact_sales;

SELECT COUNT(*) FROM bi_payments_order;