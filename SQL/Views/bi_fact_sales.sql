-- View: public.bi_fact_sales

-- DROP VIEW public.bi_fact_sales;

CREATE OR REPLACE VIEW public.bi_fact_sales
 AS
 SELECT oi.order_id,
    oi.order_item_id,
    oi.product_id,
    oi.seller_id,
    oi.shipping_limit_date::date AS shipping_limit_date,
    oi.price,
    oi.freight_value,
    fo.customer_id,
    fo.customer_unique_id,
    fo.order_status,
    fo.purchase_date,
    fo.purchase_month,
    fo.delivered_date,
    fo.estimated_date,
    fo.delivery_days,
    fo.is_late,
    fo.customer_city,
    fo.customer_state,
    dp.category,
    r.review_score,
    p.payment_type,
    p.payment_installments,
    p.payment_value,
    s.seller_city,
    s.seller_state
   FROM olist_order_items_dataset oi
     JOIN bi_fact_order fo ON fo.order_id = oi.order_id
     LEFT JOIN bi_dim_product dp ON dp.product_id = oi.product_id
     LEFT JOIN bi_fact_review_latest r ON r.order_id = oi.order_id
     LEFT JOIN olist_order_payments_dataset p ON p.order_id = oi.order_id
     LEFT JOIN olist_sellers_dataset s ON s.seller_id = oi.seller_id;

ALTER TABLE public.bi_fact_sales
    OWNER TO postgres;

