-- View: public.bi_payments_order

-- DROP VIEW public.bi_payments_order;

CREATE OR REPLACE VIEW public.bi_payments_order
 AS
 SELECT order_id,
    sum(payment_value) AS order_payment_value,
    max(payment_installments) AS order_payment_installments,
    (array_agg(payment_type ORDER BY payment_value DESC NULLS LAST))[1] AS order_payment_type
   FROM olist_order_payments_dataset op
  GROUP BY order_id;

ALTER TABLE public.bi_payments_order
    OWNER TO postgres;

