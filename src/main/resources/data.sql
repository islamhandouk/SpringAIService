-- Insert sample policyholders
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('John', 'Doe', '1980-01-15', '123 Main St, Anytown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Jane', 'Smith', '1975-05-30', '456 Oak Ave, Smalltown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Robert', 'Brown', '1990-08-20', '789 Pine Rd, Bigcity');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Alice', 'Johnson', '1985-02-25', '101 Maple St, Middletown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Michael', 'Williams', '1970-11-10', '202 Birch Blvd, Uptown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Emily', 'Davis', '1995-07-14', '303 Cedar Ln, Downtown');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('David', 'Miller', '1982-03-12', '404 Elm St, Suburbia');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('Sarah', 'Wilson', '1992-11-22', '505 Spruce St, Metropolis');
INSERT INTO policyholders (first_name, last_name, date_of_birth, address)
VALUES ('James', 'Taylor', '1978-06-30', '606 Willow St, Countryside');

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
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL567890', 4, 'Health Insurance', '2023-02-01', '2024-02-01', 300.00);
-- Michael Williams (policyholder_id = 5) with two policies
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL678901', 5, 'Auto Insurance', '2022-09-01', '2023-09-01', 700.00);
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL789012', 5, 'Home Insurance', '2023-01-01', '2024-01-01', 1500.00);
-- Emily Davis (policyholder_id = 6)
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL890123', 6, 'Life Insurance', '2021-12-01', '2031-12-01', 900.00);
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL901234', 7, 'Travel Insurance', '2023-05-01', '2024-05-01', 200.00);
-- Sarah Wilson (policyholder_id = 8) with two policies
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL012345', 8, 'Pet Insurance', '2022-10-01', '2023-10-01', 100.00);
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL123457', 8, 'Health Insurance', '2023-04-01', '2024-04-01', 400.00);
-- James Taylor (policyholder_id = 9)
INSERT INTO policies (policy_number, policyholder_id, policy_type, start_date, end_date, premium)
VALUES ('POL234568', 9, 'Home Insurance', '2021-11-01', '2022-11-01', 1200.00);

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
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (5, '2023-03-15', 'Submitted', 200.00, 'Medical expense claim');
-- Claim for Michael Williams' auto policy (policy_id = 6)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (6, '2023-07-10', 'Approved', 1500.00, 'Accident damage claim');
-- Claim for Michael Williams' home insurance (policy_id = 7)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (7, '2023-05-20', 'Approved', 8000.00, 'Fire damage claim');
-- Claim for Emily Davis' life insurance policy (policy_id = 8)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (8, '2023-09-25', 'Rejected', 12000.00, 'Medical claim - rejected');
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (9, '2023-06-10', 'Submitted', 500.00, 'Lost luggage claim');
-- Claim for Sarah Wilson's pet insurance (policy_id = 10)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (10, '2023-08-15', 'Approved', 300.00, 'Vet bill claim');
-- Claim for Sarah Wilson's health insurance (policy_id = 11)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (11, '2023-09-05', 'Rejected', 1000.00, 'Medical expense claim - rejected');
-- Claim for James Taylor's home insurance (policy_id = 12)
INSERT INTO claims (policy_id, claim_date, claim_status, claim_amount, description)
VALUES (12, '2022-12-20', 'Approved', 7000.00, 'Storm damage claim');