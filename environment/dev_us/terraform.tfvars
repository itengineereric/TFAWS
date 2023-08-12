vpccidr            = "10.110.0.0/16"
pubsubcidr         = ["10.110.10.0/24", "10.110.20.0/24", "10.110.30.0/24"]
privsubcidr        = ["10.110.40.0/24", "10.110.50.0/24", "10.110.60.0/24"]
env                = "dev"
region             = "us-east-1"
create_untrustedsg = true
create_trustedsg   = true
# create_natgw       = true # enable if needed