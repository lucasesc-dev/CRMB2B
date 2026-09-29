CREATE TABLE IF NOT EXISTS companies (
    id BIGSERIAL PRIMARY KEY,

    client_id BIGINT NOT NULL,
    rep_id BIGINT NOT NULL,

    cnpj VARCHAR(18),
    uf CHAR(2),
    cidade VARCHAR(100),

    nome VARCHAR(255) NOT NULL,

    grades TEXT,
    origem VARCHAR(50),

    volume_total NUMERIC(12,2),
    volume_compra NUMERIC(12,2),

    obs TEXT,

    website VARCHAR(255),
    linkedin VARCHAR(255),

    status VARCHAR(50),
    pendencias TEXT,

    is_shared BOOLEAN NOT NULL DEFAULT FALSE
);