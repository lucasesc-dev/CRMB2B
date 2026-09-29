CREATE TABLE IF NOT EXISTS products_sectors (
    id BIGSERIAL PRIMARY KEY,

    product_id BIGINT NOT NULL,
    sector_id BIGINT NOT NULL,
   
    CONSTRAINT fk_products_sectors_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_products_sectors_sector
        FOREIGN KEY (sector_id)
        REFERENCES sectors(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_products_sectors
        UNIQUE (product_id, sector_id)
);