CREATE TABLE IF NOT EXISTS products_additives (
    id BIGSERIAL PRIMARY KEY,

    product_id BIGINT NOT NULL,
    additive_id BIGINT NOT NULL,

    volume_total NUMERIC(12,2),
    concentracao NUMERIC(6,2),
    
    CONSTRAINT fk_products_additives_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_products_additives_additive
        FOREIGN KEY (additive_id)
        REFERENCES additives(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_products_additives
        UNIQUE (product_id, additive_id)
);