CREATE TABLE IF NOT EXISTS companies_sectors (
    id BIGSERIAL PRIMARY KEY,

    company_id BIGINT NOT NULL,
    sector_id BIGINT NOT NULL,

    CONSTRAINT fk_companies_sectors_company
        FOREIGN KEY (company_id)
        REFERENCES companies(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_companies_sectors_application
        FOREIGN KEY (sector_id)
        REFERENCES sectors(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_companies_sectors
        UNIQUE (company_id, sector_id)
);