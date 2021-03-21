/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

CREATE TABLE project (
    created_at TIMESTAMPTZ, -- typlen=8, typalign=d
    author_id BIGINT NOT NULL -- typlen=8, typalign=d
    updated_at TIMESTAMPTZ, -- typlen=8, typalign=d
    target_id INTEGER NOT NULL, -- typlen=4, typalign=i
    project_id INTEGER NOT NULL UNIQUE, -- typlen=4, typalign=i
    id SERIAL PRIMARY KEY, -- typlen=4, typalign=i
    target_type VARCHAR(2) NOT NULL, -- typlen=2, typalign=i
    action SMALLINT NOT NULL, --  typlen=2, typalign=s
    title VARCHAR(256), -- typlen=256, typalign=i
    data TEXT, -- typlen=-1, typalign=i
);


