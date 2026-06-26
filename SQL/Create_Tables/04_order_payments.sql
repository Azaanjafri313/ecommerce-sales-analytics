-- Table: public.olist_order_payments_dataset

-- DROP TABLE IF EXISTS public.olist_order_payments_dataset;

CREATE TABLE IF NOT EXISTS public.olist_order_payments_dataset
(
    order_id text COLLATE pg_catalog."default",
    payment_sequential integer,
    payment_type text COLLATE pg_catalog."default",
    payment_installments integer,
    payment_value numeric,
    CONSTRAINT fk_payments_orders FOREIGN KEY (order_id)
        REFERENCES public.olist_orders_dataset (order_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.olist_order_payments_dataset
    OWNER to postgres;
-- Index: ix_payments_order_id

-- DROP INDEX IF EXISTS public.ix_payments_order_id;

CREATE INDEX IF NOT EXISTS ix_payments_order_id
    ON public.olist_order_payments_dataset USING btree
    (order_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;