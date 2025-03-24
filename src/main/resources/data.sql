-- Insert sample policyholders
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('John', 'Doe', '1980-01-15', '123 Main St, Anytown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Jane', 'Smith', '1975-05-30', '456 Oak Ave, Smalltown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Robert', 'Brown', '1990-08-20', '789 Pine Rd, Bigcity');

-- Insert sample policies
-- Assuming John Doe gets policyholder_id = 1
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL123456', 1, 'Auto Insurance', '2023-01-01', '2024-01-01', 500.00);
-- Jane Smith (policyholder_id = 2) with two policies
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL234567', 2, 'Home Insurance', '2022-06-01', '2023-06-01', 1200.00);
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL456789', 2, 'Auto Insurance', '2023-03-01', '2024-03-01', 600.00);
-- Robert Brown (policyholder_id = 3)
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL345678', 3, 'Life Insurance', '2021-09-15', '2031-09-15', 800.00);

-- Insert sample claims
-- Claim for John Doe's auto policy (policy_id = 1)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (1, '2023-06-15', 'Submitted', 1200.00, 'Accident damage claim');
-- A second claim for the same policy
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (1, '2023-08-01', 'Approved', 800.00, 'Minor accident claim');
-- Claim for Jane Smith's home insurance (policy_id = 2)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (2, '2023-04-10', 'Approved', 5000.00, 'Water damage claim');
-- Claim for Jane Smith's auto insurance (policy_id = 3)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (3, '2023-05-05', 'Approved', 2500.00, 'Collision damage claim');
-- Claim for Robert Brown's life insurance policy (policy_id = 4)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (4, '2023-07-20', 'Rejected', 10000.00, 'Medical claim - rejected');