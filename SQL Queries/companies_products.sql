CREATE TABLE IF NOT EXISTS companies_products (
    id BIGSERIAL PRIMARY KEY,

    company_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,

    volume_total NUMERIC(12,2),
    volume_por_compra NUMERIC(12,2),
    frequencia_compra VARCHAR(30),

    CONSTRAINT fk_companies_products_company
        FOREIGN KEY (company_id)
        REFERENCES companies(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_companies_products_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_companies_products
        UNIQUE (company_id, product_id)
);