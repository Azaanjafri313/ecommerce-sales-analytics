-- Table: public.olist_orders_dataset

-- DROP TABLE IF EXISTS public.olist_orders_dataset;

CREATE TABLE IF NOT EXISTS public.olist_orders_dataset
(
    order_id text COLLATE pg_catalog."default" NOT NULL,
    customer_id text COLLATE pg_catalog."default",
    order_status text COLLATE pg_catalog."default",
    order_purchase_timestamp timestamp without time zone,
    order_approved_at timestamp without time zone,
    order_delivered_carrier_date timestamp without time zone,
    order_delivered_customer_date timestamp without time zone,
    order_estimated_delivery_date timestamp without time zone,
    CONSTRAINT olist_orders_dataset_pkey PRIMARY KEY (order_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_orders_dataset
    OWNER to postgres;
-- Index: ix_orders_customer_id

-- DROP INDEX IF EXISTS public.ix_orders_customer_id;

CREATE INDEX IF NOT EXISTS ix_orders_customer_id
    ON public.olist_orders_dataset USING btree
    (customer_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ix_orders_order_id

-- DROP INDEX IF EXISTS public.ix_orders_order_id;

CREATE INDEX IF NOT EXISTS ix_orders_order_id
    ON public.olist_orders_dataset USING btree
    (order_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ix_orders_purchase_date

-- DROP INDEX IF EXISTS public.ix_orders_purchase_date;

CREATE INDEX IF NOT EXISTS ix_orders_purchase_date
    ON public.olist_orders_dataset USING btree
    (order_purchase_timestamp ASC NULLS LAST)
    TABLESPACE pg_default;