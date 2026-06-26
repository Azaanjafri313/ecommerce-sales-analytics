-- View: public.bi_fact_order

-- DROP VIEW public.bi_fact_order;

CREATE OR REPLACE VIEW public.bi_fact_order
 AS
 SELECT o.order_id,
    o.customer_id,
    o.order_status,
    o.order_purchase_timestamp::date AS purchase_date,
    date_trunc('month'::text, o.order_purchase_timestamp)::date AS purchase_month,
    o.order_delivered_customer_date::date AS delivered_date,
    o.order_estimated_delivery_date::date AS estimated_date,
        CASE
            WHEN o.order_status = 'delivered'::text AND o.order_delivered_customer_date IS NOT NULL THEN o.order_delivered_customer_date::date - o.order_purchase_timestamp::date
            ELSE NULL::integer
        END AS delivery_days,
        CASE
            WHEN o.order_status = 'delivered'::text AND o.order_delivered_customer_date IS NOT NULL AND o.order_estimated_delivery_date IS NOT NULL AND o.order_delivered_customer_date::date > o.order_estimated_delivery_date::date THEN 1
            ELSE 0
        END AS is_late,
    c.customer_unique_id,
    c.customer_city,
    c.customer_state
   FROM olist_orders_dataset o
     JOIN olist_customers_dataset c ON c.customer_id = o.customer_id;

ALTER TABLE public.bi_fact_order
    OWNER TO postgres;

