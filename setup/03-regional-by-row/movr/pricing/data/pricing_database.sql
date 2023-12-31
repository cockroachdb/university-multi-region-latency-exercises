CREATE DATABASE movr_pricing;

ALTER DATABASE movr_pricing SET PRIMARY REGION "us-east";
ALTER DATABASE movr_pricing ADD REGION "us-central";
ALTER DATABASE movr_pricing ADD REGION "us-west";

ALTER DATABASE movr_pricing SURVIVE REGION FAILURE;

CREATE TABLE movr_pricing.vip_rates (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    rate_code STRING NOT NULL,
    market STRING NOT NULL,
    description STRING NOT NULL, 
    creation_time TIMESTAMP NOT NULL 
);

ALTER TABLE movr_pricing.vip_rates SET LOCALITY REGIONAL BY TABLE IN "us-west";
