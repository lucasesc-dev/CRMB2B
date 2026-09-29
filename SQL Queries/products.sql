CREATE TABLE IF NOT EXISTS products (
    id BIGSERIAL PRIMARY KEY,

    client_id BIGINT NOT NULL,
    rep_id BIGINT NOT NULL,

    origem VARCHAR(30),
    tipo VARCHAR(50) NOT NULL,
    subtipo VARCHAR(50),
    definicao_extra VARCHAR(100),
    fabricante VARCHAR(100),
    grade VARCHAR(100),
    fluidez NUMERIC(8,3),
    densidade NUMERIC(8,5),
    cor VARCHAR(50),


    is_shared BOOLEAN NOT NULL DEFAULT FALSE
);