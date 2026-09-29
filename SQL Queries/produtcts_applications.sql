CREATE TABLE IF NOT EXISTS products_applications (
    id BIGSERIAL PRIMARY KEY,

    product_id BIGINT NOT NULL,
    application_id BIGINT NOT NULL,

    CONSTRAINT fk_products_applications_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_products_applications_application
        FOREIGN KEY (application_id)
        REFERENCES applications(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_products_applications
        UNIQUE (product_id, application_id)
);