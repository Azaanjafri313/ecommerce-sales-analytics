-- View: public.bi_dim_product

-- DROP VIEW public.bi_dim_product;

CREATE OR REPLACE VIEW public.bi_dim_product
 AS
 SELECT p.product_id,
    COALESCE(t.product_category_name_english, p.product_category_name) AS category,
    p.product_weight_g,
    p.product_length_cm,
    p.product_height_cm,
    p.product_width_cm,
    p.product_length_cm * p.product_height_cm * p.product_width_cm AS volume_cm3
   FROM olist_products_dataset p
     LEFT JOIN product_category_name_translation t ON t.product_category_name = p.product_category_name;

ALTER TABLE public.bi_dim_product
    OWNER TO postgres;

