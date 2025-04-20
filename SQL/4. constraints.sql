ALTER TABLE care
ADD CONSTRAINT chk_caredate CHECK (contractenddate >= contractstartdate);

ALTER TABLE application
ADD CONSTRAINT chk_applicationdate CHECK (ProposedDate <= submitteddate);