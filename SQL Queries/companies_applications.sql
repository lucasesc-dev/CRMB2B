CREATE TABLE IF NOT EXISTS companies_applications (
    id BIGSERIAL PRIMARY KEY,

    company_id BIGINT NOT NULL,
    application_id BIGINT NOT NULL,

    CONSTRAINT fk_companies_applications_company
        FOREIGN KEY (company_id)
        REFERENCES companies(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_companies_applications_application
        FOREIGN KEY (application_id)
        REFERENCES applications(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_companies_applications
        UNIQUE (company_id, application_id)
);