CREATE TABLE email_template (
    id VARCHAR(36) NOT NULL PRIMARY KEY,
    body TEXT NOT NULL,
    created_by VARCHAR(255) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_by VARCHAR(255) NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    mark_for_delete BOOLEAN NOT NULL
);

ALTER TABLE email
DROP COLUMN body;

ALTER TABLE email
ADD COLUMN email_template_id VARCHAR(36) NOT NULL;

ALTER TABLE email
ADD CONSTRAINT fk_email_template_id
FOREIGN KEY (email_template_id) REFERENCES email_template(id);
