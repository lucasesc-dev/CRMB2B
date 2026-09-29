CREATE TABLE IF NOT EXISTS contacts (
    id BIGSERIAL PRIMARY KEY,

    client_id BIGINT NOT NULL,
    rep_id BIGINT NOT NULL,

    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    honorifico VARCHAR(50),
    cargo VARCHAR(100),
    
    is_shared BOOLEAN NOT NULL DEFAULT FALSE
);