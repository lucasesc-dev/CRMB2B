CREATE TABLE IF NOT EXISTS companies_contacts (
    id BIGSERIAL PRIMARY KEY,

    company_id BIGINT NOT NULL,
    contact_id BIGINT NOT NULL,

    tomador_decisao BOOLEAN NOT NULL DEFAULT FALSE,

    CONSTRAINT fk_companies_contacts_company
        FOREIGN KEY (company_id)
        REFERENCES companies(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_companies_contacts_contact
        FOREIGN KEY (contact_id)
        REFERENCES contacts(id)
        ON DELETE CASCADE,

    CONSTRAINT uq_companies_contacts
        UNIQUE (company_id, contact_id)
);