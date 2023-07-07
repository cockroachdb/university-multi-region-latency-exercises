CREATE DATABASE movr_pricing;

ALTER DATABASE movr_pricing SET PRIMARY REGION "us-east";
ALTER DATABASE movr_pricing ADD REGION "us-central";
ALTER DATABASE movr_pricing ADD REGION "us-west";

ALTER DATABASE movr_pricing SURVIVE REGION FAILURE;
