# NCLOUD CLI
************

Install
=======
* Guide : https://cli-fin.ncloud-docs.com/docs/guide-userguide
* Mutiple Profile
  ```bash
   ~/.ncloud > cat configure 
  [DEFAULT]
  ncloud_access_key_id = C2AF5118B23A1E100000
  ncloud_secret_access_key = 7E92A25543BDE8696F4E2FA7D093BFD42AE00000
  ncloud_api_url = https://fin-ncloud.apigw.fin-ntruss.com
  
  [HRO-kihoon]
  ncloud_access_key_id = 6985AF8FC3B897500000
  ncloud_secret_access_key = 92452A9064F37DB997865894FE5AD810B6900000
  ncloud_api_url = https://fin-ncloud.apigw.fin-ntruss.com
  
  [HRO-devops]
  ncloud_access_key_id = B8706A69B7E41CE00000
  ncloud_secret_access_key = 7C48BD41C67993AD8B693A6B335EFB6E27900000
  ncloud_api_url = https://fin-ncloud.apigw.fin-ntruss.com
  ```





## Network

---

* VPC
  * VPC LIST
```bash
./ncloud vpc getVpcList --vpcStatusCode RUN --regionCode FKR --profile DEFAULT | jq
```
  * VPC DETAIL LIST
```bash
./ncloud vpc getVpcDetail --vpcNo 19397 --regionCode FKR --profile DEFAULT | jq
```

* Subnet
    * Subnet LIST
```bash
./ncloud vpc getSubnetList --vpcNo 19397 --regionCode FKR --profile DEFAULT | jq
```

  * Network ACL

  * NAT Gateway

  * VPC Peering

  * Route Table

* Load Balancer
  * Load Balancer
  * Target Group


## Compute

---

  * Server
```bash
./ncloud vserver getServerInstanceList --regionCode FKR --vpcNo 19397 --serverInstanceStatusCode RUN
```
  * Server Image
  * Storage
  * Snapshots
  * Public IP
  * Init Script
  * ACG



