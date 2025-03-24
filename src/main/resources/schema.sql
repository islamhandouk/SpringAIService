CREATE TABLE policyholders (
                               policyholder_id INT PRIMARY KEY AUTO_INCREMENT,
                               first_name VARCHAR(50) NOT NULL,
                               last_name VARCHAR(50) NOT NULL,
                               date_of_birth DATE,
                               address VARCHAR(255)
);
-- Create table for policies
CREATE TABLE policies (
                          policy_id INT PRIMARY KEY AUTO_INCREMENT,
                          policy_number VARCHAR(50) NOT NULL UNIQUE,
                          policyholder_id INT NOT NULL,
                          policy_type VARCHAR(50),
                          start_date DATE,
                          end_date DATE,
                          premium DECIMAL(10,2),
                          CONSTRAINT fk_policyholder
                              FOREIGN KEY (policyholder_id)
                                  REFERENCES policyholders(policyholder_id)
);
-- Create table for claims
CREATE TABLE claims (
                        claim_id INT PRIMARY KEY AUTO_INCREMENT,
                        policy_id INT NOT NULL,
                        claim_date DATE NOT NULL,
                        claim_status VARCHAR(50),
                        claim_amount DECIMAL(10,2),
                        description VARCHAR(255),
                        CONSTRAINT fk_policy
                            FOREIGN KEY (policy_id)
                                REFERENCES policies(policy_id)
);